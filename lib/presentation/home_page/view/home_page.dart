// ignore_for_file: public_member_api_docs, document_ignores, deprecated_member_use, discarded_futures

import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';
import 'package:suv_ombor_monitoring/core/core.dart';

@RoutePage()
class HomePage extends StatefulWidget implements AutoRouteWrapper {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider.value(
          value: instance<GetLastDataBloc>(),
        ),
        BlocProvider(
          create: (context) => instance<GetStatisticStationsBloc>(),
        ),
      ],
      child: this,
    );
  }
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    const LatestDataWidget(),
    const StationInfoWidget(),
    const MapWidget(),
  ];

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Scaffold(
      appBar: _buildAppBar(theme, colorScheme),
      body: _pages[_currentIndex],
      bottomNavigationBar: _buildBottomNavigationBar(theme, colorScheme),
    );
  }

  PreferredSizeWidget _buildAppBar(ThemeData theme, ColorScheme colorScheme) {
    return AppBar(
      titleSpacing: 4.w,
      centerTitle: false,
      title: Text(
        _getTitle(),
        style: theme.textTheme.bodyLarge?.copyWith(
          color: colorScheme.onPrimary,
          fontWeight: FontWeight.bold,
          fontSize: 16.sp,
        ),
      ),
      actions: [
        BlocConsumer<GetStatisticStationsBloc, GetStatisticStationsState>(
          listener: (context, state) {
            state.when(
              initial: () {},
              loading: () {},
              loaded: (totalStations, workingStations, notWorkingStations) {
                showDialog<void>(
                  context: context,
                  builder: (context) => StatisticsDialog(
                    totalStations: totalStations,
                    workingStations: workingStations,
                    notWorkingStations: notWorkingStations,
                  ),
                );
              },
              error: (message) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(message),
                    backgroundColor: Colors.red,
                  ),
                );
              },
            );
          },
          builder: (context, state) {
            return IconButton(
              onPressed: () {
                context.read<GetStatisticStationsBloc>().add(
                  const GetStatisticStationsEvent.loadStatistics(),
                );
              },
              icon: state.maybeWhen(
                loading: () => SizedBox(
                  width: 5.5.w,
                  height: 5.5.w,
                  child: CircularProgressIndicator(
                    strokeWidth: 2,
                    color: colorScheme.onPrimary,
                  ),
                ),
                orElse: () => Icon(
                  Icons.bar_chart_rounded,
                  color: colorScheme.onPrimary,
                  size: 5.5.w,
                ),
              ),
              tooltip: 'home.statistics'.tr(),
            );
          },
        ),
        // Settings tugmasi
        IconButton(
          onPressed: () {
            context.router.push(const SettingsRoute());
          },
          icon: Icon(
            Icons.settings_outlined,
            color: colorScheme.onPrimary,
            size: 5.5.w,
          ),
          tooltip: 'home.settings'.tr(),
        ),
        SizedBox(width: 1.w),
      ],
    );
  }

  Widget _buildBottomNavigationBar(ThemeData theme, ColorScheme colorScheme) {
    return Container(
      decoration: BoxDecoration(
        color: colorScheme.surfaceContainerHighest,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.08),
            offset: const Offset(0, -2),
            blurRadius: 8,
          ),
        ],
      ),
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 0.4.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildNavItem(
                theme: theme,
                colorScheme: colorScheme,
                index: 0,
                icon: Icons.water_drop_outlined,
                activeIcon: Icons.water_drop,
                label: LocaleKeys.home_latest_data.tr(),
              ),
              _buildNavItem(
                theme: theme,
                colorScheme: colorScheme,
                index: 2,
                icon: Icons.map_outlined,
                activeIcon: Icons.map,
                label: LocaleKeys.home_map.tr(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildNavItem({
    required ThemeData theme,
    required ColorScheme colorScheme,
    required int index,
    required IconData icon,
    required IconData activeIcon,
    required String label,
  }) {
    final isSelected = _currentIndex == index;
    return InkWell(
      onTap: () {
        setState(() {
          _currentIndex = index;
        });
      },
      borderRadius: BorderRadius.circular(10),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 0.5.h),
        decoration: BoxDecoration(
          color: isSelected
              ? colorScheme.primary.withOpacity(0.1)
              : Colors.transparent,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              isSelected ? activeIcon : icon,
              color: isSelected ? colorScheme.primary : colorScheme.onSurface,
              size: 5.5.w,
            ),
            SizedBox(height: 0.4.h),
            Text(
              label,
              textAlign: TextAlign.center,
              style: theme.textTheme.labelLarge?.copyWith(
                color: isSelected ? colorScheme.primary : colorScheme.onSurface,
                fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
              ),
            ),
          ],
        ),
      ),
    );
  }

  String _getTitle() {
    switch (_currentIndex) {
      case 0:
        return LocaleKeys.home_latest_data.tr();

      case 2:
        return LocaleKeys.home_map.tr();
      default:
        return '';
    }
  }
}
