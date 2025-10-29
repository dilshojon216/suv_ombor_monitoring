// ignore_for_file: public_member_api_docs, document_ignores, deprecated_member_use, depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:suv_ombor_monitoring/core/core.dart' hide LocaleKeys;

class CustomDataWidget extends StatefulWidget {
  const CustomDataWidget({required this.stationId, super.key});
  final String stationId;

  @override
  State<CustomDataWidget> createState() => _CustomDataWidgetState();
}

class _CustomDataWidgetState extends State<CustomDataWidget> {
  DateTime? startDate;
  DateTime? endDate;

  Future<void> _selectStartDate() async {
    final picked = await showDatePicker(
      context: context,
      initialDate:
          startDate ?? DateTime.now().subtract(const Duration(days: 7)),
      firstDate: DateTime(2020),
      lastDate: DateTime.now(),
      locale: const Locale('uz', 'UZ'),
      builder: (context, child) {
        return Theme(
          data: Theme.of(context).copyWith(
            colorScheme: const ColorScheme.light(
              primary: AppColors.primary900,
              onSurface: AppColors.primary900,
            ),
            textTheme: TextTheme(
              headlineLarge: GoogleFonts.roboto(
                fontSize: 28,
                fontWeight: FontWeight.w400,
              ),
              headlineMedium: GoogleFonts.roboto(
                fontSize: 24,
                fontWeight: FontWeight.w400,
              ),
              titleMedium: GoogleFonts.roboto(
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
              labelLarge: GoogleFonts.roboto(
                fontSize: 13,
                fontWeight: FontWeight.w500,
              ),
              bodyLarge: GoogleFonts.roboto(
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
              bodyMedium: GoogleFonts.roboto(
                fontSize: 13,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          child: child!,
        );
      },
    );

    if (picked != null) {
      setState(() {
        startDate = picked;
        // Agar endDate startDate dan oldin bo'lsa, uni null qilish
        if (endDate != null && endDate!.isBefore(picked)) {
          endDate = null;
        }
      });
    }
  }

  Future<void> _selectEndDate() async {
    final picked = await showDatePicker(
      context: context,
      initialDate:
          endDate ??
          (startDate?.add(const Duration(days: 7)) ?? DateTime.now()),
      firstDate: startDate ?? DateTime(2020),
      lastDate: DateTime.now(),
      locale: const Locale('uz', 'UZ'),
      builder: (context, child) {
        return Theme(
          data: Theme.of(context).copyWith(
            colorScheme: const ColorScheme.light(
              primary: AppColors.primary900,
              onSurface: AppColors.primary900,
            ),
            textTheme: TextTheme(
              headlineLarge: GoogleFonts.roboto(
                fontSize: 28,
                fontWeight: FontWeight.w400,
              ),
              headlineMedium: GoogleFonts.roboto(
                fontSize: 24,
                fontWeight: FontWeight.w400,
              ),
              titleMedium: GoogleFonts.roboto(
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
              labelLarge: GoogleFonts.roboto(
                fontSize: 13,
                fontWeight: FontWeight.w500,
              ),
              bodyLarge: GoogleFonts.roboto(
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
              bodyMedium: GoogleFonts.roboto(
                fontSize: 13,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          child: child!,
        );
      },
    );

    if (picked != null) {
      setState(() {
        endDate = picked;
      });
    }
  }

  void _loadData() {
    if (startDate != null && endDate != null) {
      final formattedStartDate = DateFormat('yyyy-MM-dd').format(startDate!);
      final formattedEndDate = DateFormat('yyyy-MM-dd').format(endDate!);

      context.read<GetCustomDataBloc>().add(
        GetCustomDataEvent.loadDataTwoEvent(
          widget.stationId,
          formattedStartDate,
          formattedEndDate,
        ),
      );
    }
  }

  void _reset() {
    setState(() {
      startDate = null;
      endDate = null;
    });
    context.read<GetCustomDataBloc>().add(const GetCustomDataEvent.started());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetCustomDataBloc, GetCustomDataState>(
      builder: (context, state) {
        return Column(
          children: [
            // Date selection section
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: AppColors.backgroundSecondary,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.05),
                    blurRadius: 4,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Tanlangan vaqt oralig'i",
                    style: GoogleFonts.roboto(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: AppColors.primary900,
                    ),
                  ),
                  const SizedBox(height: 16),

                  // Start and End date buttons
                  Row(
                    children: [
                      Expanded(
                        child: _buildDateButton(
                          label: 'Boshlanish',
                          date: startDate,
                          onTap: _selectStartDate,
                          icon: Icons.event_available,
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: _buildDateButton(
                          label: 'Tugash',
                          date: endDate,
                          onTap: startDate == null ? null : _selectEndDate,
                          icon: Icons.event_busy,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),

                  // Action buttons
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton.icon(
                          onPressed: (startDate != null && endDate != null)
                              ? _loadData
                              : null,
                          icon: const Icon(Icons.search),
                          label: Text(
                            "Ma'lumotlarni ko'rish",
                            style: GoogleFonts.roboto(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.primary900,
                            foregroundColor: AppColors.backgroundSecondary,
                            disabledBackgroundColor: Colors.grey[300],
                            disabledForegroundColor: Colors.grey[600],
                            padding: const EdgeInsets.symmetric(vertical: 12),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 12),
                      ElevatedButton.icon(
                        onPressed: (startDate != null || endDate != null)
                            ? _reset
                            : null,
                        icon: const Icon(Icons.clear),
                        label: Text(
                          'Tozalash',
                          style: GoogleFonts.roboto(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red[600],
                          foregroundColor: Colors.white,
                          disabledBackgroundColor: Colors.grey[300],
                          disabledForegroundColor: Colors.grey[600],
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 12,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                    ],
                  ),

                  // Date range info
                  if (startDate != null && endDate != null) ...[
                    const SizedBox(height: 12),
                    Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: AppColors.primary900.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.info_outline,
                            size: 20,
                            color: AppColors.primary900,
                          ),
                          const SizedBox(width: 8),
                          Expanded(
                            child: Text(
                              '${DateFormat('dd.MM.yyyy', 'uz_UZ').format(startDate!)} dan ${DateFormat('dd.MM.yyyy', 'uz_UZ').format(endDate!)} gacha',
                              style: GoogleFonts.roboto(
                                fontSize: 13,
                                color: AppColors.primary900,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ],
              ),
            ),

            // Data display section
            Expanded(
              child: state.when(
                initial: () => Center(
                  child: Padding(
                    padding: const EdgeInsets.all(32),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.date_range,
                          size: 80,
                          color: Colors.grey[400],
                        ),
                        const SizedBox(height: 24),
                        Text(
                          'Sana oralig\'ini tanlang',
                          style: GoogleFonts.roboto(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[700],
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'Yuqorida boshlanish va tugash sanalarini tanlab, ma\'lumotlarni ko\'ring',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.roboto(
                            fontSize: 14,
                            color: Colors.grey[600],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                loading: () => const Center(
                  child: CircularProgressIndicator(),
                ),
                loadedSelectedDay: _buildDataList,
                loadedDateRange: _buildDataList,
                error: (message) => Center(
                  child: Padding(
                    padding: const EdgeInsets.all(24),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.error_outline,
                          size: 64,
                          color: Colors.red[400],
                        ),
                        const SizedBox(height: 16),
                        Text(
                          'Xatolik yuz berdi',
                          style: GoogleFonts.roboto(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.red[700],
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          message,
                          style: GoogleFonts.roboto(
                            fontSize: 14,
                            color: Colors.grey[600],
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
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  Widget _buildDateButton({
    required String label,
    required DateTime? date,
    required VoidCallback? onTap,
    required IconData icon,
  }) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12),
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          border: Border.all(
            color: onTap == null
                ? Colors.grey[300]!
                : AppColors.primary900.withOpacity(0.3),
            width: 2,
          ),
          borderRadius: BorderRadius.circular(12),
          color: date != null
              ? AppColors.primary900.withOpacity(0.05)
              : Colors.transparent,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  icon,
                  size: 18,
                  color: onTap == null
                      ? Colors.grey[400]
                      : AppColors.primary900,
                ),
                const SizedBox(width: 6),
                Text(
                  label,
                  style: GoogleFonts.roboto(
                    fontSize: 12,
                    color: onTap == null ? Colors.grey[500] : Colors.grey[700],
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Text(
              date != null
                  ? DateFormat('dd MMMM yyyy', 'uz_UZ').format(date)
                  : 'Tanlang',
              style: GoogleFonts.roboto(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: date != null
                    ? AppColors.primary900
                    : (onTap == null ? Colors.grey[400] : Colors.grey[500]),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDataList(List<HourlyData> data) {
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
                  color: Colors.grey[200],
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.inbox_outlined,
                  size: 64,
                  color: Colors.grey[400],
                ),
              ),
              const SizedBox(height: 24),
              Text(
                "Ma'lumot topilmadi",
                style: GoogleFonts.roboto(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[700],
                ),
              ),
              const SizedBox(height: 8),
              Text(
                "Tanlangan sana oralig'ida ma'lumotlar mavjud emas",
                textAlign: TextAlign.center,
                style: GoogleFonts.roboto(
                  fontSize: 14,
                  color: Colors.grey[600],
                ),
              ),
              const SizedBox(height: 24),
              ElevatedButton.icon(
                onPressed: _loadData,
                icon: const Icon(Icons.refresh),
                label: Text(
                  'Qayta yuklash',
                  style: GoogleFonts.roboto(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primary900,
                  foregroundColor: AppColors.backgroundSecondary,
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

    return RefreshIndicator(
      onRefresh: () async {
        _loadData();
      },
      child: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: data.length,
        itemBuilder: (context, index) {
          return _buildHourlyDataCard(data[index], index);
        },
      ),
    );
  }

  Widget _buildHourlyDataCard(HourlyData data, int index) {
    final dateFormat = DateFormat('dd MMM, HH:mm', 'uz_UZ');
    final dateString = dateFormat.format(data.date);

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
              AppColors.primary900.withOpacity(0.05),
              AppColors.accent600.withOpacity(0.05),
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              // Sana/Vaqt va indeks
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: AppColors.primary900,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Icon(
                      Icons.access_time,
                      color: AppColors.backgroundSecondary,
                      size: 20,
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Text(
                      dateString,
                      style: GoogleFonts.roboto(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: AppColors.primary900,
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 6,
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.accent600.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      '#${index + 1}',
                      style: GoogleFonts.roboto(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: AppColors.accent900,
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
                      icon: Icons.water,
                      iconColor: Colors.blue,
                      label: 'Suv Sathi:',
                      value: data.level.toStringAsFixed(2),
                      unit: 'm',
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: _buildDataItem(
                      icon: Icons.water_drop,
                      iconColor: Colors.cyan,
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
                  icon: Icons.tune,
                  iconColor: Colors.orange,
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

  Widget _buildDataItem({
    required IconData icon,
    required Color iconColor,
    required String label,
    required String value,
    required String unit,
  }) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: iconColor.withOpacity(0.1),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: iconColor.withOpacity(0.3),
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
                  style: GoogleFonts.roboto(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey[700],
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
                  style: GoogleFonts.roboto(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: iconColor,
                  ),
                ),
                if (unit.isNotEmpty)
                  TextSpan(
                    text: ' $unit',
                    style: GoogleFonts.roboto(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey[600],
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
