// ignore_for_file: public_member_api_docs, document_ignores, deprecated_member_use

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:suv_ombor_monitoring/core/core.dart' hide LocaleKeys;
import 'package:suv_ombor_monitoring/presentation/translations/locale_keys.g.dart';

class YesterdayDataWidget extends StatefulWidget {
  const YesterdayDataWidget({required this.stationId, super.key});
  final String stationId;

  @override
  State<YesterdayDataWidget> createState() => _YesterdayDataWidgetState();
}

class _YesterdayDataWidgetState extends State<YesterdayDataWidget> {
  DateTime selectedDate = DateTime.now().subtract(const Duration(days: 1));

  @override
  void initState() {
    super.initState();
    _loadData();
  }

  void _loadData() {
    final formattedDate = DateFormat('yyyy-MM-dd').format(selectedDate);
    context.read<GetYesterdayDataBloc>().add(
      GetYesterdayDataEvent.loadDataEvent(
        widget.stationId,
        formattedDate,
      ),
    );
  }

  Future<void> _selectDate() async {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    final picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2020),
      lastDate: DateTime.now(),
      locale: const Locale('uz', 'UZ'),
      builder: (context, child) {
        return Theme(
          data: theme.copyWith(
            colorScheme: colorScheme.copyWith(
              primary: colorScheme.primary,
              onSurface: colorScheme.onSurface,
            ),
          ),
          child: child!,
        );
      },
    );

    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
      _loadData();
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return BlocBuilder<GetYesterdayDataBloc, GetYesterdayDataState>(
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
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Title with date picker
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: colorScheme.surfaceContainerHighest,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.05),
                        blurRadius: 4,
                        offset: const Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Kechagi kun ma'lumotlari",
                              style: theme.textTheme.titleMedium?.copyWith(
                                fontWeight: FontWeight.bold,
                                color: colorScheme.primary,
                              ),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              DateFormat(
                                'dd MMMM yyyy',
                                'uz_UZ',
                              ).format(selectedDate),
                              style: theme.textTheme.bodySmall?.copyWith(
                                color: colorScheme.onSurfaceVariant,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: colorScheme.primary.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: IconButton(
                          onPressed: _selectDate,
                          icon: Icon(
                            Icons.calendar_today,
                            color: colorScheme.primary,
                          ),
                          tooltip: 'Sana tanlash',
                        ),
                      ),
                    ],
                  ),
                ),
                // Data list
                Expanded(
                  child: data.isEmpty
                      ? Center(
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
                                    Icons.inbox_outlined,
                                    size: 64,
                                    color: colorScheme.onSurfaceVariant,
                                  ),
                                ),
                                const SizedBox(height: 24),
                                Text(
                                  "Ma'lumot topilmadi",
                                  style: theme.textTheme.titleLarge?.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: 8),
                                Text(
                                  "Tanlangan kun uchun ma'lumotlar mavjud emas",
                                  textAlign: TextAlign.center,
                                  style: theme.textTheme.bodyMedium?.copyWith(
                                    color: colorScheme.onSurfaceVariant,
                                  ),
                                ),
                                const SizedBox(height: 24),
                                ElevatedButton.icon(
                                  onPressed: _loadData,
                                  icon: const Icon(Icons.refresh),
                                  label: const Text('Qayta yuklash'),
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
                        )
                      : RefreshIndicator(
                          color: colorScheme.primary,
                          onRefresh: () async {
                            _loadData();
                          },
                          child: ListView.builder(
                            padding: const EdgeInsets.all(16),
                            itemCount: data.length,
                            itemBuilder: (context, index) {
                              return _buildHourlyDataCard(
                                context,
                                data[index],
                                index,
                              );
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
                  'Xatolik yuz berdi',
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
                  onPressed: _loadData,
                  icon: const Icon(Icons.refresh),
                  label: const Text('Qayta urinish'),
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
                      label: 'Suv Sathi:',
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
                      label: 'Suv hajmi:',
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
                  label: 'Tuzatish:',
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
                  style: theme.textTheme.bodySmall,
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
