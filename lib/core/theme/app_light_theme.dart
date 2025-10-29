// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:suv_ombor_monitoring/core/utils/app_colors.dart';
import 'package:suv_ombor_monitoring/core/utils/app_fonts_manager.dart';

/// **LIGHT THEME CONFIGURATION**
///
/// Ilova uchun ochiq (light) mavzu sozlamalari.
/// AppColors va FontConstants dan foydalanadi.
class AppLightTheme {
  static ThemeData get theme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,

      // ========================================================================
      // COLOR SCHEME - Ranglar tizimi
      // ========================================================================
      colorScheme: ColorScheme.light(
        primary: AppColors.primary900,
        onPrimary: Colors.white,
        primaryContainer: AppColors.primary100,
        onPrimaryContainer: AppColors.primary900,

        secondary: AppColors.accent600,
        onSecondary: Colors.white,
        secondaryContainer: AppColors.accent100,
        onSecondaryContainer: AppColors.accent900,

        tertiary: AppColors.primary700,
        onTertiary: Colors.white,

        error: AppColors.statusError,
        onError: Colors.white,
        errorContainer: AppColors.statusError.withOpacity(0.1),
        onErrorContainer: AppColors.statusError,

        surface: AppColors.backgroundPrimary,
        onSurface: AppColors.neutralDark900,
        surfaceContainerHighest: AppColors.backgroundSecondary,

        outline: AppColors.neutralLight700,
        outlineVariant: AppColors.neutralLight600,
      ),

      // ========================================================================
      // SCAFFOLD - Asosiy scaffold sozlamalari
      // ========================================================================
      scaffoldBackgroundColor: AppColors.backgroundPrimary,

      // ========================================================================
      // APP BAR THEME - AppBar sozlamalari
      // ========================================================================
      appBarTheme: AppBarTheme(
        backgroundColor: AppColors.primary900,
        foregroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        titleTextStyle: TextStyle(
          fontFamily: FontConstants.fontUrbanist,
          fontSize: FontSize.s20,
          fontWeight: FontWeightManager.semiBold,
          color: Colors.white,
          letterSpacing: LetterSpacing.normal,
        ),
        iconTheme: const IconThemeData(
          color: Colors.white,
          size: 24,
        ),
      ),

      // ========================================================================
      // CARD THEME - Card sozlamalari
      // ========================================================================
      cardTheme: CardThemeData(
        color: AppColors.backgroundSecondary,
        elevation: 2,
        shadowColor: AppColors.neutralDark900.withOpacity(0.1),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      ),

      // ========================================================================
      // ELEVATED BUTTON THEME - Asosiy tugma
      // ========================================================================
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primary900,
          foregroundColor: Colors.white,
          elevation: 2,
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          textStyle: TextStyle(
            fontFamily: FontConstants.fontUrbanist,
            fontSize: FontSize.s16,
            fontWeight: FontWeightManager.semiBold,
            letterSpacing: LetterSpacing.wide,
          ),
        ),
      ),

      // ========================================================================
      // OUTLINED BUTTON THEME - Konturli tugma
      // ========================================================================
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: AppColors.primary900,
          side: BorderSide(color: AppColors.primary900, width: 1.5),
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          textStyle: TextStyle(
            fontFamily: FontConstants.fontUrbanist,
            fontSize: FontSize.s16,
            fontWeight: FontWeightManager.semiBold,
            letterSpacing: LetterSpacing.wide,
          ),
        ),
      ),

      // ========================================================================
      // TEXT BUTTON THEME - Oddiy tugma
      // ========================================================================
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: AppColors.primary900,
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          textStyle: TextStyle(
            fontFamily: FontConstants.fontUrbanist,
            fontSize: FontSize.s14,
            fontWeight: FontWeightManager.semiBold,
            letterSpacing: LetterSpacing.wide,
          ),
        ),
      ),

      // ========================================================================
      // INPUT DECORATION THEME - TextField sozlamalari
      // ========================================================================
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: AppColors.backgroundSecondary,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 16,
        ),

        // Border - Normal holat
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: AppColors.neutralLight700, width: 1),
        ),

        // Enabled border
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: AppColors.neutralLight700, width: 1),
        ),

        // Focused border
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: AppColors.primary900, width: 2),
        ),

        // Error border
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: AppColors.statusError, width: 1),
        ),

        // Focused error border
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: AppColors.statusError, width: 2),
        ),

        // Hint text style
        hintStyle: TextStyle(
          fontFamily: FontConstants.fontRoboto,
          fontSize: FontSize.s16,
          fontWeight: FontWeightManager.regular,
          color: AppColors.neutralLight800,
        ),

        // Label text style
        labelStyle: TextStyle(
          fontFamily: FontConstants.fontRoboto,
          fontSize: FontSize.s14,
          fontWeight: FontWeightManager.medium,
          color: AppColors.neutralDark700,
        ),

        // Floating label style
        floatingLabelStyle: TextStyle(
          fontFamily: FontConstants.fontRoboto,
          fontSize: FontSize.s14,
          fontWeight: FontWeightManager.medium,
          color: AppColors.primary900,
        ),

        // Error text style
        errorStyle: TextStyle(
          fontFamily: FontConstants.fontRoboto,
          fontSize: FontSize.s12,
          fontWeight: FontWeightManager.regular,
          color: AppColors.statusError,
        ),
      ),

      // ========================================================================
      // FLOATING ACTION BUTTON THEME
      // ========================================================================
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: AppColors.accent600,
        foregroundColor: Colors.white,
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),

      // ========================================================================
      // CHIP THEME - Chip sozlamalari
      // ========================================================================
      chipTheme: ChipThemeData(
        backgroundColor: AppColors.backgroundAccent,
        deleteIconColor: AppColors.neutralDark700,
        disabledColor: AppColors.neutralLight500,
        selectedColor: AppColors.accent600,
        secondarySelectedColor: AppColors.accent500,
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        labelStyle: TextStyle(
          fontFamily: FontConstants.fontRoboto,
          fontSize: FontSize.s14,
          fontWeight: FontWeightManager.medium,
          color: AppColors.neutralDark800,
        ),
        secondaryLabelStyle: TextStyle(
          fontFamily: FontConstants.fontRoboto,
          fontSize: FontSize.s14,
          fontWeight: FontWeightManager.medium,
          color: Colors.white,
        ),
        brightness: Brightness.light,
      ),

      // ========================================================================
      // DIALOG THEME - Dialog sozlamalari
      // ========================================================================
      dialogTheme: DialogThemeData(
        backgroundColor: AppColors.backgroundSecondary,
        elevation: 8,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        titleTextStyle: TextStyle(
          fontFamily: FontConstants.fontUrbanist,
          fontSize: FontSize.s20,
          fontWeight: FontWeightManager.semiBold,
          color: AppColors.neutralDark900,
        ),
        contentTextStyle: TextStyle(
          fontFamily: FontConstants.fontRoboto,
          fontSize: FontSize.s16,
          fontWeight: FontWeightManager.regular,
          color: AppColors.neutralDark800,
          height: LineHeight.normal,
        ),
      ),

      // ========================================================================
      // BOTTOM SHEET THEME
      // ========================================================================
      bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: AppColors.backgroundSecondary,
        elevation: 8,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        ),
      ),

      // ========================================================================
      // SNACKBAR THEME
      // ========================================================================
      snackBarTheme: SnackBarThemeData(
        backgroundColor: AppColors.neutralDark900,
        contentTextStyle: TextStyle(
          fontFamily: FontConstants.fontRoboto,
          fontSize: FontSize.s14,
          fontWeight: FontWeightManager.regular,
          color: Colors.white,
        ),
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),

      // ========================================================================
      // BOTTOM NAVIGATION BAR THEME
      // ========================================================================
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: AppColors.backgroundSecondary,
        selectedItemColor: AppColors.primary900,
        unselectedItemColor: AppColors.neutralLight800,
        selectedLabelStyle: TextStyle(
          fontFamily: FontConstants.fontRoboto,
          fontSize: FontSize.s12,
          fontWeight: FontWeightManager.semiBold,
        ),
        unselectedLabelStyle: TextStyle(
          fontFamily: FontConstants.fontRoboto,
          fontSize: FontSize.s12,
          fontWeight: FontWeightManager.regular,
        ),
        type: BottomNavigationBarType.fixed,
        elevation: 8,
      ),

      // ========================================================================
      // DIVIDER THEME
      // ========================================================================
      dividerTheme: DividerThemeData(
        color: AppColors.neutralLight700,
        thickness: 1,
        space: 16,
      ),

      // ========================================================================
      // TEXT THEME - Matn stillari
      // ========================================================================
      textTheme: TextTheme(
        // Display styles
        displayLarge: TextStyle(
          fontFamily: FontConstants.fontUrbanist,
          fontSize: FontSize.s48,
          fontWeight: FontWeightManager.bold,
          color: AppColors.neutralDark900,
          height: LineHeight.relaxed,
        ),
        displayMedium: TextStyle(
          fontFamily: FontConstants.fontUrbanist,
          fontSize: FontSize.s40,
          fontWeight: FontWeightManager.bold,
          color: AppColors.neutralDark900,
          height: LineHeight.relaxed,
        ),
        displaySmall: TextStyle(
          fontFamily: FontConstants.fontUrbanist,
          fontSize: FontSize.s32,
          fontWeight: FontWeightManager.bold,
          color: AppColors.neutralDark900,
          height: LineHeight.relaxed,
        ),

        // Headline styles
        headlineLarge: TextStyle(
          fontFamily: FontConstants.fontUrbanist,
          fontSize: FontSize.s32,
          fontWeight: FontWeightManager.bold,
          color: AppColors.neutralDark900,
          height: LineHeight.relaxed,
        ),
        headlineMedium: TextStyle(
          fontFamily: FontConstants.fontUrbanist,
          fontSize: FontSize.s28,
          fontWeight: FontWeightManager.bold,
          color: AppColors.neutralDark900,
          height: LineHeight.relaxed,
        ),
        headlineSmall: TextStyle(
          fontFamily: FontConstants.fontUrbanist,
          fontSize: FontSize.s24,
          fontWeight: FontWeightManager.semiBold,
          color: AppColors.neutralDark900,
          height: LineHeight.relaxed,
        ),

        // Title styles
        titleLarge: TextStyle(
          fontFamily: FontConstants.fontUrbanist,
          fontSize: FontSize.s20,
          fontWeight: FontWeightManager.semiBold,
          color: AppColors.neutralDark900,
          height: LineHeight.relaxed,
        ),
        titleMedium: TextStyle(
          fontFamily: FontConstants.fontUrbanist,
          fontSize: FontSize.s16,
          fontWeight: FontWeightManager.bold,
          color: AppColors.neutralDark800,
          height: LineHeight.normal,
        ),
        titleSmall: TextStyle(
          fontFamily: FontConstants.fontUrbanist,
          fontSize: FontSize.s16,
          fontWeight: FontWeightManager.medium,
          color: AppColors.neutralDark800,
          height: LineHeight.normal,
        ),

        // Body styles
        bodyLarge: TextStyle(
          fontFamily: FontConstants.fontRoboto,
          fontSize: FontSize.s18,
          fontWeight: FontWeightManager.regular,
          color: AppColors.neutralDark800,
          height: LineHeight.normal,
        ),
        bodyMedium: TextStyle(
          fontFamily: FontConstants.fontRoboto,
          fontSize: FontSize.s14,
          fontWeight: FontWeightManager.bold,
          color: AppColors.neutralDark800,
          height: LineHeight.normal,
        ),
        bodySmall: TextStyle(
          fontFamily: FontConstants.fontRoboto,
          fontSize: FontSize.s14,
          fontWeight: FontWeightManager.regular,
          color: AppColors.neutralDark700,
          height: LineHeight.normal,
        ),

        // Label styles
        labelLarge: TextStyle(
          fontFamily: FontConstants.fontRoboto,
          fontSize: FontSize.s14,
          fontWeight: FontWeightManager.medium,
          color: AppColors.neutralDark800,
        ),
        labelMedium: TextStyle(
          fontFamily: FontConstants.fontRoboto,
          fontSize: FontSize.s12,
          fontWeight: FontWeightManager.medium,
          color: AppColors.neutralDark700,
        ),
        labelSmall: TextStyle(
          fontFamily: FontConstants.fontRoboto,
          fontSize: FontSize.s10,
          fontWeight: FontWeightManager.medium,
          color: AppColors.neutralLight800,
        ),
      ),

      // ========================================================================
      // ICON THEME
      // ========================================================================
      iconTheme: IconThemeData(
        color: AppColors.neutralDark800,
        size: 24,
      ),

      // ========================================================================
      // PRIMARY ICON THEME
      // ========================================================================
      primaryIconTheme: const IconThemeData(
        color: Colors.white,
        size: 24,
      ),
    );
  }
}
