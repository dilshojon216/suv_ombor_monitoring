// ignore_for_file: deprecated_member_use

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:suv_ombor_monitoring/core/core.dart';

class StatisticsDialog extends StatelessWidget {
  const StatisticsDialog({
    required this.totalStations,
    required this.workingStations,
    required this.notWorkingStations,
    super.key,
  });

  final int totalStations;
  final int workingStations;
  final int notWorkingStations;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Title
            Text(
              LocaleKeys.home_stations_statistics.tr(),
              style: theme.textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 24),

            // Total Stations
            _buildStatisticRow(
              context,
              icon: Icons.location_on,
              iconColor: colorScheme.primary,
              label: LocaleKeys.home_total_stations.tr(),
              value: totalStations.toString(),
            ),
            const SizedBox(height: 16),

            // Working Stations
            _buildStatisticRow(
              context,
              icon: Icons.check_circle,
              iconColor: AppColors.statusSuccess,
              label: LocaleKeys.home_working_stations.tr(),
              value: workingStations.toString(),
            ),
            const SizedBox(height: 16),

            // Not Working Stations
            _buildStatisticRow(
              context,
              icon: Icons.cancel,
              iconColor: colorScheme.error,
              label: LocaleKeys.home_not_working_stations.tr(),
              value: notWorkingStations.toString(),
            ),
            const SizedBox(height: 24),

            // Close Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Navigator.of(context).pop(),
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Text(LocaleKeys.home_close.tr()),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStatisticRow(
    BuildContext context, {
    required IconData icon,
    required Color iconColor,
    required String label,
    required String value,
  }) {
    final theme = Theme.of(context);

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: iconColor.withOpacity(0.1),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: iconColor.withOpacity(0.2),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Icon(
              icon,
              color: iconColor,
              size: 24,
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Text(
              label,
              style: theme.textTheme.bodyMedium?.copyWith(
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Text(
            value,
            style: theme.textTheme.headlineSmall?.copyWith(
              fontWeight: FontWeight.bold,
              color: iconColor,
            ),
          ),
        ],
      ),
    );
  }
}
