// ignore_for_file: public_member_api_docs, document_ignores, deprecated_member_use

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:suv_ombor_monitoring/core/core.dart' hide LocaleKeys;
import 'package:suv_ombor_monitoring/presentation/translations/locale_keys.g.dart';

class HourlyDataWidget extends StatefulWidget {
  const HourlyDataWidget({required this.stationId, super.key});
  final String stationId;

  @override
  State<HourlyDataWidget> createState() => _HourlyDataWidgetState();
}

class _HourlyDataWidgetState extends State<HourlyDataWidget> {
  @override
  void initState() {
    super.initState();
    // Load data on init
    context.read<GetHourlyDataBloc>().add(
      GetHourlyDataEvent.loadData(stationId: widget.stationId),
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return BlocBuilder<GetHourlyDataBloc, GetHourlyDataState>(
      builder: (context, state) {
        return state.when(
          initial: () => Center(
            child: Text(
              LocaleKeys.station_data_messages_loading.tr(),
              style: theme.textTheme.bodyMedium,
            ),
          ),
          loading: () => Center(
            child: CircularProgressIndicator(color: colorScheme.primary),
          ),
          loaded: (data) {
            if (data.isEmpty) {
              return Center(
                child: Padding(
                  padding: const EdgeInsets.all(24),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(24),
                        decoration: BoxDecoration(
                          color: colorScheme.surfaceContainerHighest,
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.water_drop_outlined,
                          size: 64,
                          color: colorScheme.onSurfaceVariant,
                        ),
                      ),
                      const SizedBox(height: 24),
                      Text(
                        LocaleKeys.station_data_messages_no_data.tr(),
                        style: theme.textTheme.titleLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 12),
                      Text(
                        LocaleKeys.station_data_messages_no_data_desc.tr(),
                        style: theme.textTheme.bodyMedium?.copyWith(
                          color: colorScheme.onSurfaceVariant,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 24),
                      ElevatedButton.icon(
                        onPressed: () {
                          context.read<GetHourlyDataBloc>().add(
                            GetHourlyDataEvent.loadData(
                              stationId: widget.stationId,
                            ),
                          );
                        },
                        icon: const Icon(Icons.refresh),
                        label: Text(
                          LocaleKeys.station_data_messages_reload.tr(),
                        ),
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 24,
                            vertical: 12,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }

            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Title
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
                  child: Text(
                    LocaleKeys.station_data_titles_today_data.tr(),
                    style: theme.textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: colorScheme.primary,
                    ),
                  ),
                ),
                // Data list
                Expanded(
                  child: RefreshIndicator(
                    color: colorScheme.primary,
                    onRefresh: () async {
                      context.read<GetHourlyDataBloc>().add(
                        GetHourlyDataEvent.loadData(
                          stationId: widget.stationId,
                        ),
                      );
                    },
                    child: ListView.builder(
                      padding: const EdgeInsets.all(16),
                      itemCount: data.length,
                      itemBuilder: (context, index) {
                        final hourlyData = data[index];
                        return _buildHourlyDataCard(context, hourlyData, index);
                      },
                    ),
                  ),
                ),
              ],
            );
          },
          error: (message) => Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.error_outline,
                  size: 64,
                  color: colorScheme.error,
                ),
                const SizedBox(height: 16),
                Text(
                  LocaleKeys.station_data_messages_error.tr(),
                  style: theme.textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: colorScheme.error,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  message,
                  style: theme.textTheme.bodyMedium?.copyWith(
                    color: colorScheme.onSurfaceVariant,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 24),
                ElevatedButton.icon(
                  onPressed: () {
                    context.read<GetHourlyDataBloc>().add(
                      GetHourlyDataEvent.loadData(
                        stationId: widget.stationId,
                      ),
                    );
                  },
                  icon: const Icon(Icons.refresh),
                  label: Text(LocaleKeys.station_data_messages_retry.tr()),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildHourlyDataCard(
    BuildContext context,
    HourlyData data,
    int index,
  ) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final dateFormat = DateFormat('HH:mm', 'uz_UZ');
    final timeString = dateFormat.format(data.date);

    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              colorScheme.primary.withOpacity(0.05),
              colorScheme.secondary.withOpacity(0.05),
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              // Vaqt va indeks
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: colorScheme.primary,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Icon(
                      Icons.access_time,
                      color: colorScheme.onPrimary,
                      size: 20,
                    ),
                  ),
                  const SizedBox(width: 12),
                  Text(
                    timeString,
                    style: theme.textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: colorScheme.primary,
                    ),
                  ),
                  const Spacer(),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 6,
                    ),
                    decoration: BoxDecoration(
                      color: colorScheme.secondary.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      '#${index + 1}',
                      style: theme.textTheme.bodySmall?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: colorScheme.secondary,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              const Divider(),
              const SizedBox(height: 16),

              // Level va Volume ma'lumotlari
              Row(
                children: [
                  Expanded(
                    child: _buildDataItem(
                      context,
                      icon: Icons.water,
                      iconColor: colorScheme.primary,
                      label: LocaleKeys.station_data_labels_water_level.tr(),
                      value: data.level.toStringAsFixed(2),
                      unit: 'm',
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: _buildDataItem(
                      context,
                      icon: Icons.water_drop,
                      iconColor: AppColors.statusSuccess,
                      label: LocaleKeys.station_data_labels_water_volume.tr(),
                      value: data.volume.toStringAsFixed(2),
                      unit: 'm³',
                    ),
                  ),
                ],
              ),

              // Correction
              if (data.correction != 0) ...[
                const SizedBox(height: 12),
                _buildDataItem(
                  context,
                  icon: Icons.tune,
                  iconColor: AppColors.statusWarning,
                  label: LocaleKeys.station_data_labels_correction.tr(),
                  value: data.correction.toStringAsFixed(2),
                  unit: '',
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDataItem(
    BuildContext context, {
    required IconData icon,
    required Color iconColor,
    required String label,
    required String value,
    required String unit,
  }) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: iconColor.withOpacity(0.1),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: iconColor.withOpacity(0.3),
          width: 1,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(icon, color: iconColor, size: 20),
              const SizedBox(width: 6),
              Expanded(
                child: Text(
                  label,
                  style: theme.textTheme.bodySmall?.copyWith(
                    fontWeight: FontWeight.w500,
                    color: colorScheme.onSurfaceVariant,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: value,
                  style: theme.textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: iconColor,
                  ),
                ),
                if (unit.isNotEmpty)
                  TextSpan(
                    text: ' $unit',
                    style: theme.textTheme.bodySmall?.copyWith(
                      fontWeight: FontWeight.w500,
                      color: colorScheme.onSurfaceVariant,
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
