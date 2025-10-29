// ignore_for_file: public_member_api_docs, document_ignores, deprecated_member_use, depend_on_referenced_packages, discarded_futures

import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:jiffy/jiffy.dart';
import 'package:sizer/sizer.dart';
import 'package:suv_ombor_monitoring/core/core.dart';
import 'package:suv_ombor_monitoring/presentation/home_page/bloc/get_last_data_bloc/get_last_data_bloc.dart';

class LatestDataWidget extends StatefulWidget {
  const LatestDataWidget({super.key});

  @override
  State<LatestDataWidget> createState() => _LatestDataWidgetState();
}

class _LatestDataWidgetState extends State<LatestDataWidget> {
  final PagingController<int, LastData> _pagingController = PagingController(
    firstPageKey: 1,
  );

  @override
  void initState() {
    super.initState();
    _pagingController.addPageRequestListener(_fetchPage);
  }

  void _fetchPage(int pageKey) {
    context.read<GetLastDataBloc>().add(
      GetLastDataEvent.loadData(page: pageKey),
    );
  }

  @override
  void dispose() {
    _pagingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return BlocListener<GetLastDataBloc, GetLastDataState>(
      listener: (context, state) {
        state.maybeWhen(
          loaded: (data, currentPage, totalPages, hasMore) {
            if (hasMore) {
              _pagingController.appendPage(data, currentPage + 1);
            } else {
              _pagingController.appendLastPage(data);
            }
          },
          error: (message) {
            _pagingController.error = message;
          },
          orElse: () {},
        );
      },
      child: RefreshIndicator(
        onRefresh: () async {
          _pagingController.refresh();
        },
        color: colorScheme.primary,
        child: PagedListView<int, LastData>(
          pagingController: _pagingController,
          padding: EdgeInsets.all(4.w),
          builderDelegate: PagedChildBuilderDelegate<LastData>(
            itemBuilder: _buildLastDataItem,
            firstPageErrorIndicatorBuilder: (context) => _buildErrorWidget(
              context,
              _pagingController.error?.toString() ?? 'Xatolik yuz berdi',
            ),
            noItemsFoundIndicatorBuilder: _buildEmptyWidget,
            firstPageProgressIndicatorBuilder: _buildLoadingWidget,
            newPageProgressIndicatorBuilder: (context) => Container(
              padding: EdgeInsets.all(2.h),
              child: Center(
                child: CircularProgressIndicator(
                  color: colorScheme.primary,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildLoadingWidget(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircularProgressIndicator(
            color: colorScheme.primary,
          ),
          SizedBox(height: 2.h),
          Text(
            'home.loading'.tr(),
            style: theme.textTheme.bodyMedium?.copyWith(
              color: colorScheme.onSurfaceVariant,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildEmptyWidget(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.inbox_outlined,
            size: 20.w,
            color: colorScheme.onSurfaceVariant,
          ),
          SizedBox(height: 2.h),
          Text(
            'home.no_data_found'.tr(),
            style: theme.textTheme.titleLarge?.copyWith(
              color: colorScheme.onSurfaceVariant,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildErrorWidget(BuildContext context, String message) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.error_outline,
            size: 20.w,
            color: colorScheme.error,
          ),
          SizedBox(height: 2.h),
          Text(
            message,
            style: theme.textTheme.bodyMedium?.copyWith(
              color: colorScheme.error,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 2.h),
          ElevatedButton(
            onPressed: _pagingController.refresh,
            child: Text('home.retry'.tr()),
          ),
        ],
      ),
    );
  }

  Widget _buildLastDataItem(BuildContext context, LastData item, int index) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final hasLastData = item.lastData != null;
    final borderColor = hasLastData
        ? _getColorByDate(item.lastData!.date)
        : colorScheme.error;

    return GestureDetector(
      onTap: () {
        if (hasLastData) {
          context.router.push(
            StationDataRoute(item: item),
          );
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('home.no_data_available'.tr()),
              duration: const Duration(seconds: 1),
            ),
          );
        }
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 3.h),
        decoration: BoxDecoration(
          color: colorScheme.surfaceContainerHighest,
          border: Border.all(
            color: borderColor,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              offset: const Offset(0, 2),
              blurRadius: 8,
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header
            Padding(
              padding: EdgeInsets.all(4.w),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      context.router.push(
                        StationInfoRoute(lastData: item),
                      );
                    },
                    child: Icon(
                      Icons.info_outline,
                      color: colorScheme.primary,
                      size: 6.w,
                    ),
                  ),
                  SizedBox(width: 2.w),
                  Expanded(
                    child: Text(
                      item.name,
                      textAlign: TextAlign.center,
                      style: theme.textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: colorScheme.onPrimaryContainer,
                      ),
                    ),
                  ),
                  // Battery info
                  Row(
                    children: [
                      Text(
                        '${item.battery.toInt()}%',
                        style: theme.textTheme.titleMedium?.copyWith(
                          color: _getBatteryColor(item.battery),
                        ),
                      ),
                      SizedBox(width: 1.w),
                      Icon(
                        _getBatteryIcon(item.battery),
                        color: _getBatteryColor(item.battery),
                        size: 6.w,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Divider(height: 1),
            // Data rows
            _buildDataRow(
              context,
              'home.water_level'.tr(),
              hasLastData
                  ? '${item.lastData!.level.toStringAsFixed(2)} m'
                  : 'home.no_data_available'.tr(),
              colorScheme.primary,
            ),
            _buildDataRow(
              context,
              'home.water_flow'.tr(),
              hasLastData
                  ? '${item.lastData!.volume.toStringAsFixed(2)} m³'
                  : 'home.no_data_available'.tr(),
              AppColors.statusSuccess,
            ),
            _buildDataRow(
              context,
              'home.time'.tr(),
              hasLastData
                  ? _formatDate(item.lastData!.date)
                  : 'home.no_data_available'.tr(),
              colorScheme.onSurfaceVariant,
            ),
            SizedBox(height: 2.h),
          ],
        ),
      ),
    );
  }

  Widget _buildDataRow(
    BuildContext context,
    String label,
    String value,
    Color color,
  ) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 1.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: theme.textTheme.bodyMedium?.copyWith(
              color: colorScheme.onSurface,
            ),
          ),
          Text(
            value,
            style: theme.textTheme.bodyMedium?.copyWith(
              color: color,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  Color _getColorByDate(DateTime date) {
    final daysDifference = DateTime.now().difference(date).inDays;

    if (daysDifference <= 1) {
      return AppColors.statusSuccess; // Yashil - yangi
    } else if (daysDifference <= 7) {
      return AppColors.statusWarning; // Sariq - 1 hafta
    } else {
      return AppColors.statusError; // Qizil - eski
    }
  }

  IconData _getBatteryIcon(num battery) {
    if (battery >= 90) {
      return Icons.battery_full;
    } else if (battery >= 60) {
      return Icons.battery_5_bar;
    } else if (battery >= 40) {
      return Icons.battery_3_bar;
    } else if (battery >= 20) {
      return Icons.battery_2_bar;
    } else {
      return Icons.battery_1_bar;
    }
  }

  Color _getBatteryColor(num battery) {
    if (battery >= 50) {
      return AppColors.statusSuccess;
    } else if (battery >= 20) {
      return AppColors.statusWarning;
    } else {
      return AppColors.statusError;
    }
  }

  String _formatDate(DateTime date) {
    final now = DateTime.now();
    final today = DateTime(now.year, now.month, now.day);
    final dateToCheck = DateTime(date.year, date.month, date.day);

    if (dateToCheck == today) {
      return Jiffy.parseFromDateTime(date).format(pattern: 'HH:mm');
    } else {
      return Jiffy.parseFromDateTime(date).format(pattern: 'dd.MM.yyyy HH:mm');
    }
  }
}
