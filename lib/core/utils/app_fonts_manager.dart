// ignore_for_file: public_member_api_docs, document_ignores

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

/// Font konstantalari - Loyihada ishlatiladigan font oilalari
class FontConstants {
  /// Asosiy font - Urbanist (Zamonaviy, professional)
  static const String fontUrbanist = 'Urbanist';

  /// Ikkilamchi font - Roboto (Standart, o'qilishi oson)
  static const String fontRoboto = 'Roboto';

  /// Uchinchi font - Poppins (Yumshoq, zamonaviy)
  static const String fontPoppins = 'Poppins';
}

/// Font og'irlik konstantalari
class FontWeightManager {
  static const FontWeight light = FontWeight.w300;
  static const FontWeight regular = FontWeight.w400;
  static const FontWeight medium = FontWeight.w500;
  static const FontWeight semiBold = FontWeight.w600;
  static const FontWeight bold = FontWeight.w700;
  static const FontWeight extraBold = FontWeight.w800;
}

/// Font o'lchamlari - Responsive (Sizer package bilan)
class FontSize {
  // Display sizes (Katta sarlavhalar)
  static double s48 = 48.sp; // Hero titles
  static double s40 = 40.sp; // Page titles

  // Heading sizes (Sarlavhalar)
  static double s32 = 32.sp; // H1
  static double s28 = 28.sp; // H2
  static double s24 = 24.sp; // H3
  static double s20 = 20.sp; // H4

  // Body sizes (Asosiy matn)
  static double s18 = 18.sp; // Large body
  static double s16 = 16.sp; // Normal body
  static double s14 = 14.sp; // Small body

  // Caption sizes (Kichik matn)
  static double s12 = 12.sp; // Caption
  static double s10 = 10.sp; // Tiny text
  static double s8 = 8.sp; // Extra tiny
}

/// Line height konstantalari
class LineHeight {
  static const double tight = 1.2;
  static const double normal = 1.5;
  static const double relaxed = 1.6;
  static const double loose = 1.8;
}

/// Letter spacing konstantalari
class LetterSpacing {
  static const double tight = -0.5;
  static const double normal = 0;
  static const double wide = 0.5;
  static const double wider = 1;
}
