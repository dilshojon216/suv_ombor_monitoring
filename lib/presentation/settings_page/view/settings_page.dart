// ignore_for_file: public_member_api_docs, document_ignores, deprecated_member_use

import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:restart_app/restart_app.dart';
import 'package:sizer/sizer.dart';
import 'package:suv_ombor_monitoring/core/core.dart' hide LocaleKeys;
import 'package:suv_ombor_monitoring/presentation/translations/locale_keys.g.dart';

@RoutePage()
class SettingsPage extends StatefulWidget implements AutoRouteWrapper {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return this;
  }
}

class _SettingsPageState extends State<SettingsPage> {
  final AppPreferences _appPreferences = instance<AppPreferences>();

  @override
  Widget build(BuildContext context) {
    final user = _appPreferences.user;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          LocaleKeys.settings_title.tr(),
          style: AppTextStyle.urbanistLargeBold(AppColors.backgroundSecondary),
        ),
      ),
      body: ListView(
        children: [
          SizedBox(height: 2.h),
          // User Info Card
          _buildUserInfoCard(user),
          SizedBox(height: 2.h),

          // Language Settings
          _buildLanguageSettings(),
          SizedBox(height: 2.h),

          // Theme Settings
          _buildThemeSettings(),
          SizedBox(height: 2.h),

          // About App
          _buildAboutApp(),
          SizedBox(height: 2.h),

          // About Company
          _buildAboutCompany(),
          SizedBox(height: 2.h),

          // Delete Account Button
          _buildDeleteAccountButton(),
          SizedBox(height: 2.h),

          // Logout Button
          _buildLogoutButton(),
          SizedBox(height: 4.h),
        ],
      ),
    );
  }

  Widget _buildUserInfoCard(Users? user) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Card(
      margin: EdgeInsets.symmetric(horizontal: 4.w),
      child: Padding(
        padding: EdgeInsets.all(4.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    color: colorScheme.primary.withOpacity(0.1),
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.person,
                    size: 32,
                    color: colorScheme.primary,
                  ),
                ),
                SizedBox(width: 4.w),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        LocaleKeys.settings_user_info_title.tr(),
                        style: theme.textTheme.titleMedium,
                      ),
                      if (user != null) ...[
                        SizedBox(height: 0.5.h),
                        Text(
                          user.name,
                          style: theme.textTheme.bodyMedium?.copyWith(
                            color: colorScheme.onSurfaceVariant,
                          ),
                        ),
                      ],
                    ],
                  ),
                ),
              ],
            ),
            if (user != null) ...[
              SizedBox(height: 2.h),
              const Divider(),
              SizedBox(height: 2.h),
              _buildInfoRow(
                LocaleKeys.settings_user_info_id.tr(),
                user.id,
                Icons.badge_outlined,
              ),
              SizedBox(height: 1.h),
              _buildInfoRow(
                LocaleKeys.settings_user_info_phone.tr(),
                user.phoneNumber,
                Icons.phone_outlined,
              ),
              SizedBox(height: 1.h),
              _buildInfoRow(
                LocaleKeys.settings_user_info_role.tr(),
                user.role,
                Icons.work_outline,
              ),
            ] else ...[
              SizedBox(height: 2.h),
              Center(
                child: Text(
                  LocaleKeys.settings_user_info_not_available.tr(),
                  style: theme.textTheme.bodyMedium?.copyWith(
                    color: colorScheme.onSurfaceVariant,
                  ),
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }

  Widget _buildInfoRow(String label, String value, IconData icon) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Row(
      children: [
        Icon(icon, size: 20, color: colorScheme.primary),
        SizedBox(width: 3.w),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(label, style: theme.textTheme.labelMedium),
              Text(value, style: theme.textTheme.bodyMedium),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildLanguageSettings() {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Card(
      margin: EdgeInsets.symmetric(horizontal: 4.w),
      child: Column(
        children: [
          ListTile(
            leading: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: colorScheme.primary.withOpacity(0.1),
                shape: BoxShape.circle,
              ),
              child: Icon(Icons.language, color: colorScheme.primary),
            ),
            title: Text(
              LocaleKeys.settings_language_title.tr(),
              style: theme.textTheme.titleMedium,
            ),
            subtitle: Text(
              LocaleKeys.settings_language_subtitle.tr(),
              style: theme.textTheme.bodySmall,
            ),
          ),
          const Divider(height: 1),
          _buildLanguageTile('uz', LocaleKeys.settings_language_uzbek.tr()),
          _buildLanguageTile('en', LocaleKeys.settings_language_english.tr()),
          _buildLanguageTile('ru', LocaleKeys.settings_language_russian.tr()),
        ],
      ),
    );
  }

  Widget _buildLanguageTile(String langCode, String langName) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final isSelected = context.locale.languageCode == langCode;

    return ListTile(
      dense: true,
      contentPadding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 0.5.h),
      title: Text(
        langName,
        style: theme.textTheme.bodyMedium?.copyWith(
          color: isSelected ? colorScheme.primary : null,
          fontWeight: isSelected ? FontWeight.w600 : null,
        ),
      ),
      trailing: isSelected
          ? Icon(Icons.check_circle, color: colorScheme.primary)
          : null,
      onTap: () async {
        // Agar boshqa til tanlansa
        if (!isSelected) {
          await context.setLocale(Locale(langCode));
          await _appPreferences.setAppLanguage(langCode);
          await Restart.restartApp();
        }
      },
    );
  }

  Widget _buildThemeSettings() {
    return BlocBuilder<AppThemeCubit, AppThemeState>(
      builder: (context, themeState) {
        final theme = Theme.of(context);
        final colorScheme = theme.colorScheme;
        final isDark = themeState.maybeWhen(
          dark: () => true,
          orElse: () => false,
        );

        return Card(
          margin: EdgeInsets.symmetric(horizontal: 4.w),
          child: ListTile(
            leading: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: colorScheme.primary.withOpacity(0.1),
                shape: BoxShape.circle,
              ),
              child: Icon(
                isDark ? Icons.dark_mode : Icons.light_mode,
                color: colorScheme.primary,
              ),
            ),
            title: Text(
              LocaleKeys.settings_theme_title.tr(),
              style: theme.textTheme.titleMedium,
            ),
            subtitle: Text(
              LocaleKeys.settings_theme_subtitle.tr(),
              style: theme.textTheme.bodySmall,
            ),
            trailing: Switch(
              value: isDark,
              onChanged: (value) {
                context.read<AppThemeCubit>().toggleTheme();
              },
            ),
          ),
        );
      },
    );
  }

  Widget _buildAboutApp() {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Card(
      margin: EdgeInsets.symmetric(horizontal: 4.w),
      child: ExpansionTile(
        leading: Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            color: colorScheme.primary.withOpacity(0.1),
            shape: BoxShape.circle,
          ),
          child: Icon(Icons.info_outline, color: colorScheme.primary),
        ),
        title: Text(
          LocaleKeys.settings_about_app_title.tr(),
          style: theme.textTheme.titleMedium,
        ),
        children: [
          Padding(
            padding: EdgeInsets.all(4.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  LocaleKeys.settings_about_app_description.tr(),
                  style: theme.textTheme.bodyMedium,
                ),
                SizedBox(height: 2.h),
                Text(
                  '${LocaleKeys.settings_about_app_version.tr()}: 1.0.0',
                  style: theme.textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 2.h),
                Text(
                  LocaleKeys.settings_about_app_features_title.tr(),
                  style: theme.textTheme.titleSmall,
                ),
                SizedBox(height: 1.h),
                _buildFeatureItem(
                  LocaleKeys.settings_about_app_features_real_time.tr(),
                ),
                _buildFeatureItem(
                  LocaleKeys.settings_about_app_features_statistics.tr(),
                ),
                _buildFeatureItem(
                  LocaleKeys.settings_about_app_features_map.tr(),
                ),
                _buildFeatureItem(
                  LocaleKeys.settings_about_app_features_multilang.tr(),
                ),
                _buildFeatureItem(
                  LocaleKeys.settings_about_app_features_notifications.tr(),
                ),
                SizedBox(height: 2.h),
                Text(
                  '${LocaleKeys.settings_about_app_developer.tr()}: Smart Solutions System',
                  style: theme.textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFeatureItem(String text) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Padding(
      padding: EdgeInsets.only(bottom: 0.5.h),
      child: Row(
        children: [
          Icon(Icons.check_circle, size: 16, color: colorScheme.primary),
          SizedBox(width: 2.w),
          Expanded(
            child: Text(text, style: theme.textTheme.bodySmall),
          ),
        ],
      ),
    );
  }

  Widget _buildAboutCompany() {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Card(
      margin: EdgeInsets.symmetric(horizontal: 4.w),
      child: ExpansionTile(
        leading: Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            color: colorScheme.primary.withOpacity(0.1),
            shape: BoxShape.circle,
          ),
          child: Icon(Icons.business, color: colorScheme.primary),
        ),
        title: Text(
          LocaleKeys.settings_about_company_title.tr(),
          style: theme.textTheme.titleMedium,
        ),
        children: [
          Padding(
            padding: EdgeInsets.all(4.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${LocaleKeys.settings_about_company_company_name.tr()} ${LocaleKeys.settings_about_company_company_type.tr()}',
                  style: theme.textTheme.titleSmall,
                ),
                SizedBox(height: 1.h),
                Text(
                  LocaleKeys.settings_about_company_description.tr(),
                  style: theme.textTheme.bodyMedium,
                ),
                SizedBox(height: 2.h),
                Text(
                  LocaleKeys.settings_about_company_services_title.tr(),
                  style: theme.textTheme.titleSmall,
                ),
                SizedBox(height: 1.h),
                _buildFeatureItem(
                  LocaleKeys.settings_about_company_services_monitoring.tr(),
                ),
                _buildFeatureItem(
                  LocaleKeys.settings_about_company_services_iot.tr(),
                ),
                _buildFeatureItem(
                  LocaleKeys.settings_about_company_services_software.tr(),
                ),
                _buildFeatureItem(
                  LocaleKeys.settings_about_company_services_consulting.tr(),
                ),
                _buildFeatureItem(
                  LocaleKeys.settings_about_company_services_support.tr(),
                ),
                SizedBox(height: 2.h),
                const Divider(),
                SizedBox(height: 2.h),
                Text(
                  LocaleKeys.settings_about_company_contact_info.tr(),
                  style: theme.textTheme.titleSmall,
                ),
                SizedBox(height: 1.h),
                _buildContactItem(
                  Icons.phone,
                  LocaleKeys.phone.tr(),
                  '+998 99 834 11 93',
                ),
                _buildContactItem(
                  Icons.email,
                  LocaleKeys.email.tr(),
                  'sss.ird@mail.ru',
                ),
                _buildContactItem(
                  Icons.send,
                  LocaleKeys.settings_about_company_telegram.tr(),
                  '@dilshodjon216',
                ),
                _buildContactItem(
                  Icons.location_on,
                  LocaleKeys.settings_about_company_address.tr(),
                  LocaleKeys.settings_about_company_address_text.tr(),
                ),
                _buildContactItem(
                  Icons.access_time,
                  LocaleKeys.settings_about_company_working_hours.tr(),
                  LocaleKeys.settings_about_company_working_hours_text.tr(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildContactItem(IconData icon, String label, String value) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Padding(
      padding: EdgeInsets.only(bottom: 1.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, size: 18, color: colorScheme.primary),
          SizedBox(width: 3.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(label, style: theme.textTheme.labelMedium),
                Text(value, style: theme.textTheme.bodySmall),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDeleteAccountButton() {
    final theme = Theme.of(context);

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 4.w),
      child: OutlinedButton(
        onPressed: _showDeleteAccountDialog,
        style: OutlinedButton.styleFrom(
          foregroundColor: theme.colorScheme.error,
          side: BorderSide(color: theme.colorScheme.error, width: 1.5),
          padding: EdgeInsets.symmetric(vertical: 2.h),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.delete_forever),
            SizedBox(width: 2.w),
            Text(
              LocaleKeys.settings_menu_delete_account.tr(),
              style: theme.textTheme.titleMedium?.copyWith(
                color: theme.colorScheme.error,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildLogoutButton() {
    final theme = Theme.of(context);

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 4.w),
      child: ElevatedButton(
        onPressed: _showLogoutDialog,
        style: ElevatedButton.styleFrom(
          backgroundColor: theme.colorScheme.errorContainer,
          foregroundColor: theme.colorScheme.error,
          padding: EdgeInsets.symmetric(vertical: 2.h),
          elevation: 0,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.logout),
            SizedBox(width: 2.w),
            Text(
              LocaleKeys.settings_menu_logout.tr(),
              style: theme.textTheme.titleMedium?.copyWith(
                color: theme.colorScheme.error,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _showLogoutDialog() async {
    final theme = Theme.of(context);

    await showDialog<void>(
      context: context,
      builder: (dialogContext) => AlertDialog(
        title: Text(LocaleKeys.settings_menu_logout_confirm.tr()),
        content: Text(LocaleKeys.settings_menu_logout_message.tr()),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(dialogContext).pop(),
            child: Text(LocaleKeys.buttons_cancel.tr()),
          ),
          TextButton(
            onPressed: () async {
              // Dialog yopish
              Navigator.of(dialogContext).pop();

              // Barcha ma'lumotlarni o'chirish
              await _appPreferences.clear();

              // Dasturni qayta ishga tushirish
              await Restart.restartApp();
            },
            child: Text(
              LocaleKeys.settings_menu_logout.tr(),
              style: TextStyle(color: theme.colorScheme.error),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _showDeleteAccountDialog() async {
    final theme = Theme.of(context);

    await showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (dialogContext) => AlertDialog(
        icon: Icon(
          Icons.warning_amber_rounded,
          color: theme.colorScheme.error,
          size: 48,
        ),
        title: Text(
          LocaleKeys.settings_menu_delete_account_confirm.tr(),
          style: TextStyle(color: theme.colorScheme.error),
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(LocaleKeys.settings_menu_delete_account_message.tr()),
            SizedBox(height: 2.h),
            Container(
              padding: EdgeInsets.all(2.w),
              decoration: BoxDecoration(
                color: theme.colorScheme.errorContainer,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.error_outline,
                    color: theme.colorScheme.error,
                    size: 20,
                  ),
                  SizedBox(width: 2.w),
                  Expanded(
                    child: Text(
                      LocaleKeys.settings_menu_delete_account_warning.tr(),
                      style: TextStyle(
                        color: theme.colorScheme.error,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(dialogContext).pop(),
            child: Text(LocaleKeys.buttons_cancel.tr()),
          ),
          TextButton(
            onPressed: () async {
              // Dialog yopish
              Navigator.of(dialogContext).pop();

              // TODO: Backend API ga delete account request yuborish
              // await _apiService.deleteAccount();

              // Barcha ma'lumotlarni o'chirish
              await _appPreferences.clear();

              // Dasturni qayta ishga tushirish
              await Restart.restartApp();
            },
            child: Text(
              LocaleKeys.settings_menu_delete_account.tr(),
              style: TextStyle(
                color: theme.colorScheme.error,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
