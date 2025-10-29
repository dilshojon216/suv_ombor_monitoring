// ignore_for_file: public_member_api_docs, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:suv_ombor_monitoring/core/utils/app_colors.dart';
import 'package:suv_ombor_monitoring/core/utils/app_fonts_manager.dart';

/// **DARK THEME CONFIGURATION**
///
/// Ilova uchun qorong'i (dark) mavzu sozlamalari.
/// AppColors va FontConstants dan foydalanadi.
class AppDarkTheme {
  static ThemeData get theme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,

      // ========================================================================
      // COLOR SCHEME - Ranglar tizimi (Dark mode)
      // ========================================================================
      colorScheme: ColorScheme.dark(
        primary: AppColors.accent600,
        onPrimary: Colors.white,
        primaryContainer: AppColors.primary800,
        onPrimaryContainer: AppColors.accent100,

        secondary: AppColors.accent500,
        onSecondary: AppColors.neutralDark900,
        secondaryContainer: AppColors.accent900,
        onSecondaryContainer: AppColors.accent100,

        tertiary: AppColors.primary600,
        onTertiary: AppColors.neutralDark900,

        error: AppColors.statusError,
        onError: AppColors.neutralDark900,
        errorContainer: AppColors.statusError.withOpacity(0.2),
        onErrorContainer: AppColors.statusError.withOpacity(0.8),

        surface: AppColors.backgroundDark,
        onSurface: AppColors.neutralLight700,
        surfaceContainerHighest: AppColors.neutralDark800,

        outline: AppColors.neutralDark600,
        outlineVariant: AppColors.neutralDark700,
      ),

      // ========================================================================
      // SCAFFOLD - Asosiy scaffold sozlamalari
      // ========================================================================
      scaffoldBackgroundColor: AppColors.backgroundDark,

      // ========================================================================
      // APP BAR THEME - AppBar sozlamalari
      // ========================================================================
      appBarTheme: AppBarTheme(
        backgroundColor: AppColors.neutralDark900,
        foregroundColor: AppColors.neutralLight700,
        elevation: 0,
        centerTitle: true,
        titleTextStyle: TextStyle(
          fontFamily: FontConstants.fontUrbanist,
          fontSize: FontSize.s20,
          fontWeight: FontWeightManager.semiBold,
          color: AppColors.neutralLight700,
          letterSpacing: LetterSpacing.normal,
        ),
        iconTheme: IconThemeData(
          color: AppColors.neutralLight700,
          size: 24,
        ),
      ),

      // ========================================================================
      // CARD THEME - Card sozlamalari
      // ========================================================================
      cardTheme: CardThemeData(
        color: AppColors.neutralDark800,
        elevation: 2,
        shadowColor: Colors.black.withOpacity(0.3),
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
          backgroundColor: AppColors.accent600,
          foregroundColor: AppColors.neutralDark900,
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
          foregroundColor: AppColors.accent600,
          side: BorderSide(color: AppColors.accent600, width: 1.5),
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
          foregroundColor: AppColors.accent600,
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
        fillColor: AppColors.neutralDark800,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 16,
        ),

        // Border - Normal holat
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: AppColors.neutralDark600, width: 1),
        ),

        // Enabled border
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: AppColors.neutralDark600, width: 1),
        ),

        // Focused border
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: AppColors.accent600, width: 2),
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
          color: AppColors.neutralDark600,
        ),

        // Label text style
        labelStyle: TextStyle(
          fontFamily: FontConstants.fontRoboto,
          fontSize: FontSize.s14,
          fontWeight: FontWeightManager.medium,
          color: AppColors.neutralLight800,
        ),

        // Floating label style
        floatingLabelStyle: TextStyle(
          fontFamily: FontConstants.fontRoboto,
          fontSize: FontSize.s14,
          fontWeight: FontWeightManager.medium,
          color: AppColors.accent600,
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
        foregroundColor: AppColors.neutralDark900,
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),

      // ========================================================================
      // CHIP THEME - Chip sozlamalari
      // ========================================================================
      chipTheme: ChipThemeData(
        backgroundColor: AppColors.neutralDark700,
        deleteIconColor: AppColors.neutralLight700,
        disabledColor: AppColors.neutralDark600,
        selectedColor: AppColors.accent600,
        secondarySelectedColor: AppColors.accent700,
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        labelStyle: TextStyle(
          fontFamily: FontConstants.fontRoboto,
          fontSize: FontSize.s14,
          fontWeight: FontWeightManager.medium,
          color: AppColors.neutralLight700,
        ),
        secondaryLabelStyle: TextStyle(
          fontFamily: FontConstants.fontRoboto,
          fontSize: FontSize.s14,
          fontWeight: FontWeightManager.medium,
          color: AppColors.neutralDark900,
        ),
        brightness: Brightness.dark,
      ),

      // ========================================================================
      // DIALOG THEME - Dialog sozlamalari
      // ========================================================================
      dialogTheme: DialogThemeData(
        backgroundColor: AppColors.neutralDark800,
        elevation: 8,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        titleTextStyle: TextStyle(
          fontFamily: FontConstants.fontUrbanist,
          fontSize: FontSize.s20,
          fontWeight: FontWeightManager.semiBold,
          color: AppColors.neutralLight700,
        ),
        contentTextStyle: TextStyle(
          fontFamily: FontConstants.fontRoboto,
          fontSize: FontSize.s16,
          fontWeight: FontWeightManager.regular,
          color: AppColors.neutralLight800,
          height: LineHeight.normal,
        ),
      ),

      // ========================================================================
      // BOTTOM SHEET THEME
      // ========================================================================
      bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: AppColors.neutralDark800,
        elevation: 8,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        ),
      ),

      // ========================================================================
      // SNACKBAR THEME
      // ========================================================================
      snackBarTheme: SnackBarThemeData(
        backgroundColor: AppColors.neutralDark700,
        contentTextStyle: TextStyle(
          fontFamily: FontConstants.fontRoboto,
          fontSize: FontSize.s14,
          fontWeight: FontWeightManager.regular,
          color: AppColors.neutralLight700,
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
        backgroundColor: AppColors.neutralDark800,
        selectedItemColor: AppColors.accent600,
        unselectedItemColor: AppColors.neutralDark600,
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
        color: AppColors.neutralDark600,
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
          color: AppColors.neutralLight700,
          height: LineHeight.relaxed,
        ),
        displayMedium: TextStyle(
          fontFamily: FontConstants.fontUrbanist,
          fontSize: FontSize.s40,
          fontWeight: FontWeightManager.bold,
          color: AppColors.neutralLight700,
          height: LineHeight.relaxed,
        ),
        displaySmall: TextStyle(
          fontFamily: FontConstants.fontUrbanist,
          fontSize: FontSize.s32,
          fontWeight: FontWeightManager.bold,
          color: AppColors.neutralLight700,
          height: LineHeight.relaxed,
        ),

        // Headline styles
        headlineLarge: TextStyle(
          fontFamily: FontConstants.fontUrbanist,
          fontSize: FontSize.s32,
          fontWeight: FontWeightManager.bold,
          color: AppColors.neutralLight700,
          height: LineHeight.relaxed,
        ),
        headlineMedium: TextStyle(
          fontFamily: FontConstants.fontUrbanist,
          fontSize: FontSize.s28,
          fontWeight: FontWeightManager.bold,
          color: AppColors.neutralLight700,
          height: LineHeight.relaxed,
        ),
        headlineSmall: TextStyle(
          fontFamily: FontConstants.fontUrbanist,
          fontSize: FontSize.s24,
          fontWeight: FontWeightManager.semiBold,
          color: AppColors.neutralLight700,
          height: LineHeight.relaxed,
        ),

        // Title styles
        titleLarge: TextStyle(
          fontFamily: FontConstants.fontUrbanist,
          fontSize: FontSize.s20,
          fontWeight: FontWeightManager.semiBold,
          color: AppColors.neutralLight700,
          height: LineHeight.relaxed,
        ),
        titleMedium: TextStyle(
          fontFamily: FontConstants.fontUrbanist,
          fontSize: FontSize.s16,
          fontWeight: FontWeightManager.bold,
          color: AppColors.neutralLight800,
          height: LineHeight.normal,
        ),
        titleSmall: TextStyle(
          fontFamily: FontConstants.fontUrbanist,
          fontSize: FontSize.s16,
          fontWeight: FontWeightManager.medium,
          color: AppColors.neutralLight800,
          height: LineHeight.normal,
        ),

        // Body styles
        bodyLarge: TextStyle(
          fontFamily: FontConstants.fontRoboto,
          fontSize: FontSize.s18,
          fontWeight: FontWeightManager.bold,
          color: AppColors.neutralLight800,
          height: LineHeight.normal,
        ),
        bodyMedium: TextStyle(
          fontFamily: FontConstants.fontRoboto,
          fontSize: FontSize.s14,
          fontWeight: FontWeightManager.bold,
          color: AppColors.neutralLight800,
          height: LineHeight.normal,
        ),
        bodySmall: TextStyle(
          fontFamily: FontConstants.fontRoboto,
          fontSize: FontSize.s14,
          fontWeight: FontWeightManager.regular,
          color: AppColors.neutralLight900,
          height: LineHeight.normal,
        ),

        // Label styles
        labelLarge: TextStyle(
          fontFamily: FontConstants.fontRoboto,
          fontSize: FontSize.s14,
          fontWeight: FontWeightManager.medium,
          color: AppColors.neutralLight800,
        ),
        labelMedium: TextStyle(
          fontFamily: FontConstants.fontRoboto,
          fontSize: FontSize.s12,
          fontWeight: FontWeightManager.medium,
          color: AppColors.neutralLight900,
        ),
        labelSmall: TextStyle(
          fontFamily: FontConstants.fontRoboto,
          fontSize: FontSize.s10,
          fontWeight: FontWeightManager.medium,
          color: AppColors.neutralDark600,
        ),
      ),

      // ========================================================================
      // ICON THEME
      // ========================================================================
      iconTheme: IconThemeData(
        color: AppColors.neutralLight800,
        size: 24,
      ),

      // ========================================================================
      // PRIMARY ICON THEME
      // ========================================================================
      primaryIconTheme: IconThemeData(
        color: AppColors.neutralDark900,
        size: 24,
      ),
    );
  }
}
