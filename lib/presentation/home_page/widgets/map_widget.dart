// ignore_for_file: public_member_api_docs, document_ignores, deprecated_member_use

import 'dart:async';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:sizer/sizer.dart';
import 'package:suv_ombor_monitoring/core/core.dart';
import 'package:suv_ombor_monitoring/presentation/home_page/bloc/get_last_data_bloc/get_last_data_bloc.dart';

class MapWidget extends StatefulWidget {
  const MapWidget({super.key});

  @override
  State<MapWidget> createState() => _MapWidgetState();
}

class _MapWidgetState extends State<MapWidget> {
  final Completer<GoogleMapController> _controller = Completer();
  final Set<Marker> _markers = {};
  bool _isLoading = true;
  List<LastData> _stations = [];
  int _currentPage = 1;
  bool _isLoadingMore = false;
  final Key _mapKey = const ValueKey('google_map_widget');

  // Default location (Uzbekistan center)
  static const CameraPosition _defaultLocation = CameraPosition(
    target: LatLng(41.2995, 69.2401), // Tashkent
    zoom: 6,
  );

  @override
  void initState() {
    super.initState();
    _loadAllStations();
  }

  void _loadAllStations() {
    setState(() {
      _isLoading = true;
      _isLoadingMore = false;
      _stations.clear();
      _markers.clear();
      _currentPage = 1;
    });
    _loadStationsPage(1);
  }

  void _loadStationsPage(int page) {
    if (page > 1) {
      setState(() {
        _isLoadingMore = true;
      });
    }
    context.read<GetLastDataBloc>().add(
      GetLastDataEvent.loadData(page: page),
    );
  }

  Future<void> _createMarkersAndFocusMap(List<LastData> stations) async {
    final markers = <Marker>{};
    final validCoordinates = <LatLng>[];

    print('🗺️ Total stations received: ${stations.length}');

    for (final station in stations) {
      print('📍 Station: ${station.name}, Location: "${station.location}"');

      final coords = _parseLocation(station.location);
      if (coords != null) {
        print(
          '✅ Valid coords for ${station.name}: ${coords.latitude}, ${coords.longitude}',
        );
        validCoordinates.add(coords);

        final marker = Marker(
          markerId: MarkerId(station.id),
          position: coords,
          infoWindow: InfoWindow(
            title: station.name,
            snippet: station.lastData != null
                ? '${'home.water_level'.tr()}: ${station.lastData!.level.toStringAsFixed(2)} m'
                : 'home.no_data_available'.tr(),
          ),
          icon: BitmapDescriptor.defaultMarkerWithHue(
            _getMarkerColor(station),
          ),
        );
        markers.add(marker);
      } else {
        print('❌ Invalid location for ${station.name}: "${station.location}"');
      }
    }

    print('✨ Total valid markers: ${markers.length}');

    setState(() {
      _markers.clear();
      _markers.addAll(markers);
      _isLoading = false;
    });

    // Calculate center and zoom to fit all markers
    if (validCoordinates.isNotEmpty && _controller.isCompleted) {
      final controller = await _controller.future;
      final bounds = _calculateBounds(validCoordinates);
      await controller.animateCamera(
        CameraUpdate.newLatLngBounds(bounds, 50),
      );
    }
  }

  LatLng? _parseLocation(String location) {
    try {
      if (location.isEmpty) return null;

      // Support both formats:
      // 1. "latitude,longitude" (correct format)
      // 2. "longitude-latitude" (backend format - needs swap)

      String delimiter = ',';
      if (location.contains('-') && !location.contains(',')) {
        delimiter = '-';
      }

      final parts = location.split(delimiter).map((e) => e.trim()).toList();
      if (parts.length != 2) return null;

      var lat = double.tryParse(parts[0]);
      var lng = double.tryParse(parts[1]);

      if (lat == null || lng == null) return null;

      // If using '-' delimiter, the format is "longitude-latitude"
      // So we need to swap them
      if (delimiter == '-') {
        final temp = lat;
        lat = lng;
        lng = temp;
        print('🔄 Swapped coordinates for correct format: lat=$lat, lng=$lng');
      }

      // Validate coordinates
      if (lat < -90 || lat > 90 || lng < -180 || lng > 180) {
        print('⚠️ Coordinates out of range: lat=$lat, lng=$lng');
        return null;
      }

      return LatLng(lat, lng);
    } catch (e) {
      print('❌ Error parsing location: $e');
      return null;
    }
  }

  double _getMarkerColor(LastData station) {
    if (station.lastData == null) {
      return BitmapDescriptor.hueRed; // No data
    }

    final daysDifference = DateTime.now()
        .difference(station.lastData!.date)
        .inDays;

    if (daysDifference <= 1) {
      return BitmapDescriptor.hueGreen; // Fresh data
    } else if (daysDifference <= 7) {
      return BitmapDescriptor.hueOrange; // Week old
    } else {
      return BitmapDescriptor.hueRed; // Stale data
    }
  }

  LatLngBounds _calculateBounds(List<LatLng> coordinates) {
    double? minLat, maxLat, minLng, maxLng;

    for (final coord in coordinates) {
      minLat = minLat == null
          ? coord.latitude
          : (coord.latitude < minLat ? coord.latitude : minLat);
      maxLat = maxLat == null
          ? coord.latitude
          : (coord.latitude > maxLat ? coord.latitude : maxLat);
      minLng = minLng == null
          ? coord.longitude
          : (coord.longitude < minLng ? coord.longitude : minLng);
      maxLng = maxLng == null
          ? coord.longitude
          : (coord.longitude > maxLng ? coord.longitude : maxLng);
    }

    return LatLngBounds(
      southwest: LatLng(minLat!, minLng!),
      northeast: LatLng(maxLat!, maxLng!),
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return BlocListener<GetLastDataBloc, GetLastDataState>(
      listener: (context, state) {
        state.maybeWhen(
          loaded: (data, currentPage, totalPages, hasMore) {
            print('📄 Page $currentPage/$totalPages loaded, hasMore: $hasMore');

            // Add new data to stations list (create mutable copy)
            if (currentPage == 1) {
              _stations = List<LastData>.from(data);
            } else {
              _stations = [..._stations, ...data];
            }

            // If there are more pages, load next page
            if (hasMore && currentPage < totalPages) {
              _currentPage = currentPage + 1;
              print('⏭️ Loading next page: $_currentPage');
              _loadStationsPage(_currentPage);
            } else {
              // All pages loaded, create markers
              print('✅ All pages loaded. Total stations: ${_stations.length}');
              _createMarkersAndFocusMap(_stations);
            }
          },
          error: (message) {
            setState(() {
              _isLoading = false;
            });
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(message),
                backgroundColor: colorScheme.error,
              ),
            );
          },
          orElse: () {},
        );
      },
      child: Stack(
        children: [
          GoogleMap(
            key: _mapKey,
            initialCameraPosition: _defaultLocation,
            markers: _markers,
            mapType: MapType.hybrid,
            onMapCreated: (GoogleMapController controller) {
              if (!_controller.isCompleted) {
                _controller.complete(controller);
              }
            },
            myLocationEnabled: true,
          ),
          if (_isLoading)
            ColoredBox(
              color: colorScheme.surface.withOpacity(0.8),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircularProgressIndicator(
                      color: colorScheme.primary,
                    ),
                    SizedBox(height: 2.h),
                    Text(
                      _isLoadingMore
                          ? 'Sahifa $_currentPage yuklanmoqda...'
                          : 'home.loading'.tr(),
                      style: theme.textTheme.bodyMedium?.copyWith(
                        color: colorScheme.onSurfaceVariant,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          // Refresh button
          Positioned(
            top: 2.h,
            right: 2.w,
            child: FloatingActionButton(
              mini: true,
              backgroundColor: colorScheme.primary,
              onPressed: _loadAllStations,
              child: Icon(Icons.refresh, color: colorScheme.onPrimary),
            ),
          ),
          // Legend
          Positioned(
            bottom: 2.h,
            left: 2.w,
            child: Container(
              padding: EdgeInsets.all(2.w),
              decoration: BoxDecoration(
                color: colorScheme.surfaceContainerHighest,
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 8,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  _buildLegendItem(
                    context,
                    AppColors.statusSuccess,
                    'home.fresh_data'.tr(),
                  ),
                  SizedBox(height: 1.h),
                  _buildLegendItem(
                    context,
                    AppColors.statusWarning,
                    'home.week_old'.tr(),
                  ),
                  SizedBox(height: 1.h),
                  _buildLegendItem(
                    context,
                    AppColors.statusError,
                    'home.stale_data'.tr(),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildLegendItem(BuildContext context, Color color, String label) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 4.w,
          height: 4.w,
          decoration: BoxDecoration(
            color: color,
            shape: BoxShape.circle,
          ),
        ),
        SizedBox(width: 2.w),
        Text(
          label,
          style: theme.textTheme.bodySmall?.copyWith(
            color: colorScheme.onSurface,
          ),
        ),
      ],
    );
  }

  @override
  void dispose() {
    _controller.future.then((controller) => controller.dispose());
    super.dispose();
  }
}
