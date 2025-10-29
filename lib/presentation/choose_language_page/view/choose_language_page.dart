// ignore_for_file: public_member_api_docs, document_ignores, deprecated_member_use, discarded_futures

import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sizer/sizer.dart';
import 'package:suv_ombor_monitoring/core/core.dart';

@RoutePage()
class ChooseLanguagePage extends StatefulWidget implements AutoRouteWrapper {
  const ChooseLanguagePage({super.key});

  @override
  State<ChooseLanguagePage> createState() => _ChooseLanguagePageState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return this;
  }
}

class _ChooseLanguagePageState extends State<ChooseLanguagePage> {
  String _selectedLanguage = 'uz'; // Default uzbekcha
  AppPreferences app = instance<AppPreferences>();

  final List<LanguageModel> _languages = [
    LanguageModel(
      code: 'uz',
      name: 'O\'zbekcha',
      flag: '🇺🇿',
      locale: const Locale('uz'),
    ),
    LanguageModel(
      code: 'ru',
      name: 'Русский',
      flag: '🇷🇺',
      locale: const Locale('ru'),
    ),
    LanguageModel(
      code: 'en',
      name: 'English',
      flag: '🇬🇧',
      locale: const Locale('en'),
    ),
  ];

  Future<void> _changeLanguage(LanguageModel language) async {
    if (_selectedLanguage == language.code) return;

    setState(() {
      _selectedLanguage = language.code;
    });

    // EasyLocalization orqali dastur tilini o'zgartirish
    await context.setLocale(language.locale);
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarColor: AppColors.primary900,
        statusBarIconBrightness: Brightness.light,
        statusBarBrightness: Brightness.dark,
      ),
      child: Scaffold(
        backgroundColor: AppColors.backgroundPrimary,
        body: SafeArea(
          child: Column(
            children: [
              // Top Section
              Expanded(
                flex: 2,
                child: Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        AppColors.primary900,
                        AppColors.primary700,
                      ],
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Icon
                      Container(
                        padding: EdgeInsets.all(4.w),
                        decoration: BoxDecoration(
                          color: AppColors.backgroundSecondary.withOpacity(
                            0.15,
                          ),
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: AppColors.backgroundSecondary.withOpacity(
                              0.3,
                            ),
                            width: 2,
                          ),
                        ),
                        child: Icon(
                          Icons.translate_rounded,
                          size: 40.sp,
                          color: AppColors.backgroundSecondary,
                        ),
                      ),

                      SizedBox(height: 2.h),

                      // Title
                      Text(
                        LocaleKeys.language_select_language.tr(),
                        style: TextStyle(
                          fontSize: FontSize.s24,
                          fontWeight: FontWeightManager.bold,
                          color: AppColors.backgroundSecondary,
                        ),
                      ),

                      SizedBox(height: 0.5.h),

                      Text(
                        LocaleKeys.language_choose_language.tr(),
                        style: TextStyle(
                          fontSize: FontSize.s12,
                          fontWeight: FontWeightManager.regular,
                          color: AppColors.backgroundSecondary.withOpacity(0.8),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              // Bottom Section
              Expanded(
                flex: 3,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(5.w, 3.h, 5.w, 2.h),
                  child: Column(
                    children: [
                      // Language List
                      Expanded(
                        child: ListView.separated(
                          physics: const BouncingScrollPhysics(),
                          itemCount: _languages.length,
                          separatorBuilder: (context, index) =>
                              SizedBox(height: 1.5.h),
                          itemBuilder: (context, index) {
                            return _buildLanguageItem(_languages[index]);
                          },
                        ),
                      ),

                      SizedBox(height: 2.h),

                      // Continue Button
                      _buildContinueButton(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildLanguageItem(LanguageModel language) {
    final isSelected = _selectedLanguage == language.code;

    return InkWell(
      onTap: () => _changeLanguage(language),
      borderRadius: BorderRadius.circular(15),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 1.2.h),
        decoration: BoxDecoration(
          color: isSelected
              ? AppColors.accent600.withOpacity(0.08)
              : Colors.transparent,
          borderRadius: BorderRadius.circular(14),
          border: Border.all(
            color: isSelected ? AppColors.accent600 : AppColors.neutralLight700,
            width: isSelected ? 2 : 1,
          ),
        ),
        child: Row(
          children: [
            // Flag
            Text(
              language.flag,
              style: TextStyle(fontSize: 28.sp),
            ),

            SizedBox(width: 3.w),

            // Language name
            Expanded(
              child: Text(
                language.name,
                style: TextStyle(
                  fontSize: FontSize.s16,
                  fontWeight: isSelected
                      ? FontWeightManager.semiBold
                      : FontWeightManager.regular,
                  color: AppColors.neutralDark900,
                ),
              ),
            ), // Check icon
            AnimatedScale(
              scale: isSelected ? 1.0 : 0.0,
              duration: const Duration(milliseconds: 200),
              child: Container(
                padding: EdgeInsets.all(1.w),
                decoration: const BoxDecoration(
                  color: AppColors.accent600,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.check,
                  color: AppColors.backgroundSecondary,
                  size: 14.sp,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildContinueButton() {
    return SizedBox(
      width: double.infinity,
      height: 6.h,
      child: ElevatedButton(
        onPressed: () {
          app
            ..setAppLanguage(
              _languages
                  .firstWhere((lang) => lang.code == _selectedLanguage)
                  .code,
            )
            ..setChooseLanguage(true);

          context.router.pushAndPopUntil(
            const WelcomeRoute(),
            predicate: (_) => false,
          );
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primary900,
          foregroundColor: AppColors.backgroundSecondary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14),
          ),
          elevation: 0,
        ),
        child: Text(
          LocaleKeys.language_continue.tr(),
          style: TextStyle(
            fontSize: FontSize.s16,
            fontWeight: FontWeightManager.semiBold,
            letterSpacing: 0.3,
          ),
        ),
      ),
    );
  }
}

/// Language model class
class LanguageModel {
  final String code;
  final String name;
  final String flag;
  final Locale locale;

  LanguageModel({
    required this.code,
    required this.name,
    required this.flag,
    required this.locale,
  });
}
