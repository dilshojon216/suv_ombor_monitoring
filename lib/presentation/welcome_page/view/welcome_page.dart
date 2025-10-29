// ignore_for_file: public_member_api_docs, document_ignores, deprecated_member_use, discarded_futures

import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sizer/sizer.dart';
import 'package:suv_ombor_monitoring/core/core.dart';

@RoutePage()
class WelcomePage extends StatefulWidget implements AutoRouteWrapper {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return this;
  }
}

class _WelcomePageState extends State<WelcomePage>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _fadeAnimation;
  late Animation<Offset> _slideAnimation;
  AppPreferences appPreferences = instance<AppPreferences>();

  @override
  void initState() {
    super.initState();

    // Set status bar style
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: AppColors.backgroundPrimary,
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.light,
      ),
    );

    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1200),
    );

    _fadeAnimation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: const Interval(0, 0.6, curve: Curves.easeOut),
      ),
    );

    _slideAnimation =
        Tween<Offset>(
          begin: const Offset(0, 0.3),
          end: Offset.zero,
        ).animate(
          CurvedAnimation(
            parent: _animationController,
            curve: const Interval(0.3, 1, curve: Curves.easeOut),
          ),
        );

    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: AppColors.backgroundPrimary,
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.light,
      ),
      child: Scaffold(
        backgroundColor: AppColors.backgroundPrimary,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 3.h),
            child: Column(
              children: [
                // Language Button
                Align(
                  alignment: Alignment.topRight,
                  child: _buildLanguageButton(),
                ),

                SizedBox(height: 2.h),

                // Logo and Content
                Expanded(
                  child: FadeTransition(
                    opacity: _fadeAnimation,
                    child: SlideTransition(
                      position: _slideAnimation,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // Logo
                          _buildLogo(),

                          SizedBox(height: 4.h),

                          // Welcome Title
                          _buildWelcomeText(),

                          SizedBox(height: 2.h),

                          // Subtitle
                          _buildSubtitle(),

                          SizedBox(height: 1.h),

                          // Description
                          _buildDescription(),

                          SizedBox(height: 4.h),

                          // Feature Icons
                          _buildFeatureIcons(),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 2.h),
                // Buttons
                _buildButtons(),

                SizedBox(height: 2.h),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildLanguageButton() {
    final languages = [
      {'code': 'uz', 'name': 'O\'zbekcha', 'flag': '🇺🇿'},
      {'code': 'ru', 'name': 'Русский', 'flag': '🇷🇺'},
      {'code': 'en', 'name': 'English', 'flag': '🇬🇧'},
    ];

    return PopupMenuButton<String>(
      onSelected: (String languageCode) async {
        await context.setLocale(Locale(languageCode));
        await appPreferences.setAppLanguage(languageCode);
      },
      offset: Offset(0, 5.h),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      itemBuilder: (BuildContext context) {
        return languages.map((language) {
          final isSelected = context.locale.languageCode == language['code'];
          return PopupMenuItem<String>(
            value: language['code']!,
            child: Row(
              children: [
                Text(
                  language['flag']!,
                  style: TextStyle(fontSize: 20.sp),
                ),
                SizedBox(width: 3.w),
                Expanded(
                  child: Text(
                    language['name'] as String,
                    style: TextStyle(
                      fontSize: FontSize.s14,
                      fontWeight: isSelected
                          ? FontWeightManager.semiBold
                          : FontWeightManager.regular,
                      color: isSelected
                          ? AppColors.primary900
                          : AppColors.neutralDark700,
                    ),
                  ),
                ),
                if (isSelected)
                  Icon(
                    Icons.check_circle,
                    color: AppColors.accent600,
                    size: 20.sp,
                  ),
              ],
            ),
          );
        }).toList();
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 1.h),
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.neutralLight700),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.language,
              size: 18.sp,
              color: AppColors.neutralDark700,
            ),
            SizedBox(width: 1.w),
            Text(
              context.locale.languageCode.toUpperCase(),
              style: TextStyle(
                fontSize: FontSize.s14,
                fontWeight: FontWeightManager.medium,
                color: AppColors.neutralDark700,
              ),
            ),
            SizedBox(width: 1.w),
            Icon(
              Icons.arrow_drop_down,
              size: 20.sp,
              color: AppColors.neutralDark700,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildLogo() {
    return Hero(
      tag: 'app_logo',
      child: Container(
        padding: EdgeInsets.all(1.w),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              AppColors.accent600.withOpacity(0.2),
              AppColors.primary700.withOpacity(0.1),
            ],
          ),
        ),
        child: Container(
          width: 50.w,
          height: 45.w,

          decoration: BoxDecoration(
            color: AppColors.backgroundSecondary,
            borderRadius: BorderRadius.circular(25),
            boxShadow: [
              BoxShadow(
                color: AppColors.primary900.withOpacity(0.20),
                blurRadius: 20,
                offset: const Offset(0, 8),
              ),
            ],
          ),
          child: Image.asset(
            'assets/images/logo_app.png',
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }

  Widget _buildWelcomeText() {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        style: TextStyle(
          fontSize: FontSize.s28,
          fontWeight: FontWeightManager.bold,
          color: AppColors.neutralDark900,
          height: 1.3,
        ),
        children: [
          TextSpan(
            text: LocaleKeys.welcome_title.tr(),
            style: TextStyle(
              fontSize: FontSize.s20,
              fontWeight: FontWeightManager.bold,
              color: AppColors.neutralDark600,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSubtitle() {
    return Text(
      LocaleKeys.welcome_subtitle.tr(),
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: FontSize.s16,
        fontWeight: FontWeightManager.semiBold,
        color: AppColors.neutralDark800,
      ),
    );
  }

  Widget _buildDescription() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5.w),
      child: Text(
        LocaleKeys.welcome_description.tr(),
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: FontSize.s14,
          fontWeight: FontWeightManager.regular,
          color: AppColors.neutralDark600,
          height: 1.5,
        ),
      ),
    );
  }

  Widget _buildFeatureIcons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildFeatureIcon(Icons.water_drop, AppColors.accent600),
        _buildFeatureIcon(Icons.analytics_outlined, AppColors.primary700),
        _buildFeatureIcon(
          Icons.notifications_active_outlined,
          AppColors.statusInfo,
        ),
      ],
    );
  }

  Widget _buildFeatureIcon(IconData icon, Color color) {
    return Container(
      padding: EdgeInsets.all(3.w),
      decoration: BoxDecoration(
        color: color.withOpacity(0.1),
        shape: BoxShape.circle,
      ),
      child: Icon(
        icon,
        size: 28.sp,
        color: color,
      ),
    );
  }

  Widget _buildButtons() {
    return Column(
      children: [
        // Sign In Button
        SizedBox(
          width: double.infinity,
          height: 6.h,
          child: ElevatedButton(
            onPressed: () {
              context.router.push(const SignInRoute());
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.primary900,
              foregroundColor: AppColors.backgroundSecondary,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(14),
              ),
              elevation: 3,
              shadowColor: AppColors.primary900.withOpacity(0.3),
            ),
            child: Text(
              LocaleKeys.welcome_sign_in.tr(),
              style: TextStyle(
                fontSize: FontSize.s16,
                fontWeight: FontWeightManager.semiBold,
                letterSpacing: 0.5,
              ),
            ),
          ),
        ),

        SizedBox(height: 2.h),

        // Sign Up Button
        SizedBox(
          width: double.infinity,
          height: 6.h,
          child: OutlinedButton(
            onPressed: _showSignUpInfoDialog,
            style: OutlinedButton.styleFrom(
              foregroundColor: AppColors.primary900,
              side: const BorderSide(
                color: AppColors.primary900,
                width: 2,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(14),
              ),
            ),
            child: Text(
              LocaleKeys.welcome_sign_up.tr(),
              style: TextStyle(
                fontSize: FontSize.s16,
                fontWeight: FontWeightManager.semiBold,
                letterSpacing: 0.5,
              ),
            ),
          ),
        ),
      ],
    );
  }

  void _showSignUpInfoDialog() {
    showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          title: Row(
            children: [
              Container(
                padding: EdgeInsets.all(2.w),
                decoration: BoxDecoration(
                  color: AppColors.primary900.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(
                  Icons.info_outline,
                  color: AppColors.primary900,
                  size: 24.sp,
                ),
              ),
              SizedBox(width: 3.w),
              Expanded(
                child: Text(
                  LocaleKeys.welcome_sign_up_info_title.tr(),
                  style: TextStyle(
                    fontSize: FontSize.s18,
                    fontWeight: FontWeightManager.bold,
                    color: AppColors.primary900,
                  ),
                ),
              ),
            ],
          ),
          content: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  LocaleKeys.welcome_sign_up_info_1.tr(),
                  style: TextStyle(
                    fontSize: FontSize.s14,
                    fontWeight: FontWeightManager.regular,
                    color: AppColors.neutralDark700,
                    height: 1.5,
                  ),
                ),
                Text(
                  LocaleKeys.welcome_sign_up_info_2.tr(),
                  style: TextStyle(
                    fontSize: FontSize.s14,
                    fontWeight: FontWeightManager.semiBold,
                    color: AppColors.neutralDark900,
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(3.w),
                  decoration: BoxDecoration(
                    color: AppColors.backgroundPrimary,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: AppColors.primary900.withOpacity(0.2),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildInfoRow(
                        Icons.phone,
                        LocaleKeys.welcome_sign_up_info_3.tr(),
                      ),
                      SizedBox(height: 1.h),
                      _buildInfoRow(
                        Icons.email,
                        LocaleKeys.welcome_sign_up_info_4.tr(),
                      ),
                      SizedBox(height: 1.h),
                      _buildInfoRow(
                        Icons.send,
                        LocaleKeys.welcome_sign_up_info_5.tr(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          actions: [
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primary900,
                  foregroundColor: AppColors.backgroundSecondary,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 1.5.h),
                ),
                child: Text(
                  LocaleKeys.welcome_sign_up_button_ok.tr(),
                  style: TextStyle(
                    fontSize: FontSize.s16,
                    fontWeight: FontWeightManager.semiBold,
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  Widget _buildInfoRow(IconData icon, String text) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(
          icon,
          size: 18.sp,
          color: AppColors.primary900,
        ),
        SizedBox(width: 2.w),
        Expanded(
          child: Text(
            text,
            style: TextStyle(
              fontSize: FontSize.s14,
              fontWeight: FontWeightManager.regular,
              color: AppColors.neutralDark800,
              height: 1.4,
            ),
          ),
        ),
      ],
    );
  }
}
