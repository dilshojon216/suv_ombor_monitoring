// ignore_for_file: public_member_api_docs, document_ignores, deprecated_member_use

import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:suv_ombor_monitoring/core/core.dart';

@RoutePage()
class StationInfoPage extends StatefulWidget implements AutoRouteWrapper {
  const StationInfoPage({required this.lastData, super.key});
  final LastData lastData;

  @override
  State<StationInfoPage> createState() => _StationInfoPageState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return this;
  }
}

class _StationInfoPageState extends State<StationInfoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.lastData.name,
          style: GoogleFonts.roboto(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: AppColors.primary900,
        foregroundColor: AppColors.backgroundSecondary,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Header Card with Station Name and Status
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(24),
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    AppColors.primary900,
                    AppColors.accent600,
                  ],
                ),
              ),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.2),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.water_drop,
                      size: 64,
                      color: AppColors.backgroundSecondary,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    widget.lastData.name,
                    style: GoogleFonts.roboto(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: AppColors.backgroundSecondary,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 8),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 8,
                    ),
                    decoration: BoxDecoration(
                      color: widget.lastData.status == 1
                          ? Colors.green
                          : Colors.red,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      widget.lastData.status == 1
                          ? LocaleKeys.station_info_status_active.tr()
                          : LocaleKeys.station_info_status_inactive.tr(),
                      style: GoogleFonts.roboto(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  if (widget.lastData.defective) ...[
                    const SizedBox(height: 8),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 8,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Icon(
                            Icons.warning_amber_rounded,
                            color: Colors.white,
                            size: 18,
                          ),
                          const SizedBox(width: 6),
                          Text(
                            LocaleKeys.station_info_status_defective.tr(),
                            style: GoogleFonts.roboto(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ],
              ),
            ),

            const SizedBox(height: 16),

            // Main Information Section
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildSectionTitle(
                    LocaleKeys.station_info_sections_basic_info.tr(),
                  ),
                  const SizedBox(height: 12),
                  _buildInfoCard([
                    _buildInfoRow(
                      icon: Icons.badge_outlined,
                      label: LocaleKeys.station_info_labels_id.tr(),
                      value: widget.lastData.id,
                      iconColor: Colors.blue,
                    ),
                    _buildInfoRow(
                      icon: Icons.device_hub,
                      label: LocaleKeys.station_info_labels_imel.tr(),
                      value: widget.lastData.imel,
                      iconColor: Colors.purple,
                    ),
                    _buildInfoRow(
                      icon: Icons.calendar_today,
                      label: LocaleKeys.station_info_labels_created_date.tr(),
                      value: DateFormat(
                        'dd MMMM yyyy, HH:mm',
                        context.locale.languageCode,
                      ).format(widget.lastData.createdAt),
                      iconColor: Colors.green,
                    ),
                    _buildInfoRow(
                      icon: Icons.update,
                      label: LocaleKeys.station_info_labels_updated_date.tr(),
                      value: DateFormat(
                        'dd MMMM yyyy, HH:mm',
                        context.locale.languageCode,
                      ).format(widget.lastData.updatedAt),
                      iconColor: Colors.orange,
                    ),
                  ]),

                  const SizedBox(height: 24),

                  // Contact Information
                  _buildSectionTitle(
                    LocaleKeys.station_info_sections_contact_info.tr(),
                  ),
                  const SizedBox(height: 12),
                  _buildInfoCard([
                    _buildInfoRow(
                      icon: Icons.phone_android,
                      label: LocaleKeys.station_info_labels_user_phone.tr(),
                      value: widget.lastData.userPhoneNum.isEmpty
                          ? LocaleKeys.station_info_placeholders_not_entered
                                .tr()
                          : widget.lastData.userPhoneNum,
                      iconColor: Colors.teal,
                    ),
                    _buildInfoRow(
                      icon: Icons.phone,
                      label: LocaleKeys.station_info_labels_device_phone.tr(),
                      value: widget.lastData.devicePhoneNum.isEmpty
                          ? LocaleKeys.station_info_placeholders_not_entered
                                .tr()
                          : widget.lastData.devicePhoneNum,
                      iconColor: Colors.indigo,
                    ),
                  ]),

                  const SizedBox(height: 24),

                  // Location Information
                  _buildSectionTitle(
                    LocaleKeys.station_info_sections_location.tr(),
                  ),
                  const SizedBox(height: 12),
                  _buildInfoCard([
                    _buildInfoRow(
                      icon: Icons.location_on,
                      label: LocaleKeys.station_info_labels_coordinates.tr(),
                      value: widget.lastData.location.isEmpty
                          ? LocaleKeys.station_info_placeholders_not_entered
                                .tr()
                          : widget.lastData.location,
                      iconColor: Colors.red,
                    ),
                  ]),

                  const SizedBox(height: 24),

                  // Data Transmission Information
                  _buildSectionTitle(
                    LocaleKeys.station_info_sections_data_transmission.tr(),
                  ),
                  const SizedBox(height: 12),
                  _buildInfoCard([
                    _buildInfoRow(
                      icon: Icons.access_time,
                      label: LocaleKeys.station_info_labels_send_data_time.tr(),
                      value: widget.lastData.sendDataTime.isEmpty
                          ? LocaleKeys.station_info_placeholders_not_set.tr()
                          : widget.lastData.sendDataTime,
                      iconColor: Colors.cyan,
                    ),
                    _buildInfoRow(
                      icon: Icons.schedule,
                      label: LocaleKeys.station_info_labels_send_info_time.tr(),
                      value: widget.lastData.sendInfoTime.isEmpty
                          ? LocaleKeys.station_info_placeholders_not_set.tr()
                          : widget.lastData.sendInfoTime,
                      iconColor: Colors.deepPurple,
                    ),
                  ]),

                  const SizedBox(height: 24),

                  // Technical Information
                  _buildSectionTitle(
                    LocaleKeys.station_info_sections_technical_info.tr(),
                  ),
                  const SizedBox(height: 12),
                  _buildInfoCard([
                    _buildInfoRow(
                      icon: Icons.code,
                      label: LocaleKeys.station_info_labels_program_version
                          .tr(),
                      value: widget.lastData.programVersion.isEmpty
                          ? LocaleKeys.station_info_placeholders_unknown.tr()
                          : widget.lastData.programVersion,
                      iconColor: Colors.blueGrey,
                    ),
                    _buildInfoRow(
                      icon: Icons.battery_charging_full,
                      label: LocaleKeys.station_info_labels_battery.tr(),
                      value: '${widget.lastData.battery}%',
                      iconColor: Colors.green,
                    ),
                    _buildInfoRow(
                      icon: Icons.signal_cellular_alt,
                      label: LocaleKeys.station_info_labels_signal.tr(),
                      value: '${widget.lastData.signal}',
                      iconColor: Colors.blue,
                    ),
                  ]),

                  const SizedBox(height: 24),

                  // Integration Information
                  if (widget.lastData.isIntegration) ...[
                    _buildSectionTitle(
                      LocaleKeys.station_info_sections_integration.tr(),
                    ),
                    const SizedBox(height: 12),
                    _buildInfoCard([
                      _buildInfoRow(
                        icon: Icons.link,
                        label: LocaleKeys.station_info_labels_integration_status
                            .tr(),
                        value: LocaleKeys.station_info_placeholders_connected
                            .tr(),
                        iconColor: Colors.green,
                      ),
                      if (widget.lastData.integrationDate != null)
                        _buildInfoRow(
                          icon: Icons.event,
                          label: LocaleKeys.station_info_labels_integration_date
                              .tr(),
                          value: DateFormat(
                            'dd MMMM yyyy, HH:mm',
                            context.locale.languageCode,
                          ).format(widget.lastData.integrationDate!),
                          iconColor: Colors.purple,
                        ),
                    ]),
                    const SizedBox(height: 24),
                  ],

                  // Last Data Information
                  if (widget.lastData.lastData != null) ...[
                    _buildSectionTitle(
                      LocaleKeys.station_info_sections_last_measurement.tr(),
                    ),
                    const SizedBox(height: 12),
                    _buildInfoCard([
                      _buildInfoRow(
                        icon: Icons.water,
                        label: LocaleKeys.station_info_labels_water_level.tr(),
                        value:
                            '${widget.lastData.lastData!.level.toStringAsFixed(2)} m',
                        iconColor: Colors.blue,
                      ),
                      _buildInfoRow(
                        icon: Icons.water_drop,
                        label: LocaleKeys.station_info_labels_water_volume.tr(),
                        value:
                            '${widget.lastData.lastData!.volume.toStringAsFixed(2)} m³',
                        iconColor: Colors.cyan,
                      ),
                      if (widget.lastData.lastData!.correction != 0)
                        _buildInfoRow(
                          icon: Icons.tune,
                          label: LocaleKeys.station_info_labels_correction.tr(),
                          value: widget.lastData.lastData!.correction
                              .toStringAsFixed(2),
                          iconColor: Colors.orange,
                        ),
                      _buildInfoRow(
                        icon: Icons.access_time,
                        label: LocaleKeys.station_info_labels_measurement_time
                            .tr(),
                        value: DateFormat(
                          'dd MMMM yyyy, HH:mm',
                          context.locale.languageCode,
                        ).format(widget.lastData.lastData!.date),
                        iconColor: Colors.green,
                      ),
                    ]),
                  ],

                  const SizedBox(height: 24),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Text(
      title,
      style: GoogleFonts.roboto(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: AppColors.primary900,
      ),
    );
  }

  Widget _buildInfoCard(List<Widget> children) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: children,
        ),
      ),
    );
  }

  Widget _buildInfoRow({
    required IconData icon,
    required String label,
    required String value,
    required Color iconColor,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: iconColor.withOpacity(0.1),
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  label,
                  style: GoogleFonts.roboto(
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey[600],
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  value,
                  style: GoogleFonts.roboto(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: AppColors.primary900,
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
