// ignore_for_file: public_member_api_docs, document_ignores

import 'package:flutter/material.dart';

abstract class AppColors {
  // ============================================================================
  // PRIMARY COLORS - Asosiy ranglar (#074B6B - Chuqur ko'k)
  // ============================================================================
  /// Primary 900 - Eng quyuq ko'k (Header, Logo, Ikon fonlari)
  static const Color primary900 = Color(0xff074B6B);
  static const Color primary800 = Color(0xff095A7F);
  static const Color primary700 = Color(0xff0B6993);
  static const Color primary600 = Color(0xff0D78A7);
  static const Color primary500 = Color(0xff0F87BB); // Base
  static const Color primary400 = Color(0xff3F9FC8);
  static const Color primary300 = Color(0xff6FB7D5);
  static const Color primary200 = Color(0xff9FCFE2);
  static const Color primary100 = Color(0xffCFE7EF);
  static const Color primary50 = Color(0xffE7F3F7);

  // ============================================================================
  // ACCENT COLORS - Aksent ranglar (#3AB0D1 - Yengil ko'k, suv va sensor)
  // ============================================================================
  /// Accent - Tugmalar va aktiv elementlar uchun
  static const Color accent900 = Color(0xff1E5A6B);
  static const Color accent800 = Color(0xff287A94);
  static const Color accent700 = Color(0xff329ABD);
  static const Color accent600 = Color(0xff3AB0D1); // Base accent
  static const Color accent500 = Color(0xff3AB0D1);
  static const Color accent400 = Color(0xff61C0DA);
  static const Color accent300 = Color(0xff88D0E3);
  static const Color accent200 = Color(0xffAFDFEC);
  static const Color accent100 = Color(0xffD7EFF5);
  static const Color accent50 = Color(0xffEBF7FA);

  // ============================================================================
  // BACKGROUND COLORS - Fon ranglari (#F2F7F9 - Toza oqish)
  // ============================================================================
  /// Background - Asosiy ilova fon rangi
  static const Color backgroundPrimary = Color(0xffF2F7F9);
  static const Color backgroundSecondary = Color(0xffFFFFFF);
  static const Color backgroundAccent = Color(0xffE5F3F7);
  static const Color backgroundDark = Color(0xff1E293B);

  // ============================================================================
  // NEUTRAL COLORS - Neytral ranglar
  // ============================================================================
  /// Neutral Dark (#1E293B) - Sarlavhalar, matnlar
  static const Color neutralDark900 = Color(0xff0F172A);
  static const Color neutralDark800 = Color(0xff1E293B); // Base dark
  static const Color neutralDark700 = Color(0xff334155);
  static const Color neutralDark600 = Color(0xff475569);
  static const Color neutralDark500 = Color(0xff64748B);

  /// Neutral Light (#94A3B8) - Yengil matnlar, ikkilamchi ma'lumotlar
  static const Color neutralLight900 = Color(0xff64748B);
  static const Color neutralLight800 = Color(0xff94A3B8); // Base light
  static const Color neutralLight700 = Color(0xffCBD5E1);
  static const Color neutralLight600 = Color(0xffE2E8F0);
  static const Color neutralLight500 = Color(0xffF1F5F9);
  static const Color neutralLight400 = Color(0xffF8FAFC);

  // ============================================================================
  // STATUS COLORS - Holat ranglari
  // ============================================================================
  static const Color statusSuccess = Color(0xff10B981); // Green - Muvaffaqiyat
  static const Color statusWarning = Color(0xffF59E0B); // Amber - Ogohlantirish
  static const Color statusError = Color(0xffEF4444); // Red - Xatolik
  static const Color statusInfo = Color(0xff3B82F6); // Blue - Ma'lumot

  // ============================================================================
  // TEXT COLORS - Matn ranglari
  // ============================================================================
  static const Color textPrimary = Color(0xff1E293B); // Asosiy matn
  static const Color textSecondary = Color(0xff94A3B8); // Ikkilamchi matn
  static const Color textTertiary = Color(0xffCBD5E1); // Uchinchi darajali matn
  static const Color textOnPrimary = Color(0xffFFFFFF); // Primary ustidagi matn
  static const Color textOnAccent = Color(0xffFFFFFF); // Accent ustidagi matn
  static const Color textOnDark = Color(0xffFFFFFF); // Qora fon ustida

  // ============================================================================
  // SURFACE COLORS - Sirt ranglari (Kartochka, modal va h.k.)
  // ============================================================================
  static const Color surfaceLight = Color(0xffFFFFFF);
  static const Color surfaceMedium = Color(0xffF2F7F9);
  static const Color surfaceDark = Color(0xff1E293B);

  // ============================================================================
  // BORDER COLORS - Chegara ranglari
  // ============================================================================
  static const Color borderLight = Color(0xffE2E8F0);
  static const Color borderMedium = Color(0xffCBD5E1);
  static const Color borderDark = Color(0xff94A3B8);

  // ============================================================================
  // SHADOW COLORS - Soya ranglari
  // ============================================================================
  static const Color shadowLight = Color(0x0A000000); // 4% opacity
  static const Color shadowMedium = Color(0x14000000); // 8% opacity
  static const Color shadowDark = Color(0x29000000); // 16% opacity

  // ============================================================================
  // OVERLAY COLORS - Qatlam ranglari
  // ============================================================================
  static const Color overlayLight = Color(0x0A074B6B); // 4% Primary
  static const Color overlayMedium = Color(0x14074B6B); // 8% Primary
  static const Color overlayDark = Color(0x52074B6B); // 32% Primary
  static const Color overlayBlack = Color(0x80000000); // 50% Black

  // ============================================================================
  // SENSOR SPECIFIC COLORS - Sensor uchun maxsus ranglar
  // ============================================================================
  static const Color sensorActive = Color(0xff3AB0D1); // Aktiv sensor
  static const Color sensorInactive = Color(0xff94A3B8); // Faol emas
  static const Color sensorWarning = Color(0xffF59E0B); // Ogohlantirish
  static const Color sensorDanger = Color(0xffEF4444); // Xavfli holat
  static const Color sensorNormal = Color(0xff10B981); // Normal holat

  // ============================================================================
  // WATER LEVEL COLORS - Suv darajasi ranglari
  // ============================================================================
  static const Color waterLevelHigh = Color(0xff074B6B); // Yuqori daraja
  static const Color waterLevelMedium = Color(0xff3AB0D1); // O'rtacha
  static const Color waterLevelLow = Color(0xffF59E0B); // Past daraja
  static const Color waterLevelCritical = Color(0xffEF4444); // Kritik

  // ============================================================================
  // LEGACY COLORS - Eski ranglar (backward compatibility uchun)
  // ============================================================================
  static const Color white = Color(0xffFFFFFF);
  static const Color black = Color(0xff000000);

  // Eski greyscale (yangi neutralLight bilan almashtirildi)
  static const Color greyscale900 = Color(0xff1E293B);
  static const Color greyscale800 = Color(0xff334155);
  static const Color greyscale700 = Color(0xff475569);
  static const Color greyscale600 = Color(0xff64748B);
  static const Color greyscale500 = Color(0xff94A3B8);
  static const Color greyscale400 = Color(0xffCBD5E1);
  static const Color greyscale300 = Color(0xffE2E8F0);
  static const Color greyscale200 = Color(0xffF1F5F9);
  static const Color greyscale100 = Color(0xffF8FAFC);
  static const Color greyscale50 = Color(0xffFFFFFF);

  // Eski status colors
  static const Color alertsStatusInfo = Color(0xff3B82F6);
  static const Color alertsStatusSuccess = Color(0xff10B981);
  static const Color alertsStatusWarning = Color(0xffF59E0B);
  static const Color alertsStatusError = Color(0xffEF4444);

  // Eski dark colors
  static const Color darkDark1 = Color(0xff181a20);
  static const Color darkDark2 = Color(0xff1e2025);
  static const Color darkDark3 = Color(0xff1f222a);
  static const Color darkDark4 = Color(0xff262a35);
  static const Color othersWhite = Color(0xffffffff);

  // Eski background colors
  static const Color backgroundBlue = Color(0xffedf2ff);
  static const Color backgroundPurple = Color(0xfff5f3ff);
  static const Color backgroundGreen = Color(0xffebf8f3);
  static const Color backgroundOrange = Color(0xfffff3f0);
  static const Color backgroundRed = Color(0xffffefed);
  static const Color backgroundTeal = Color(0xffedf7f6);
  static const Color backgroundBrown = Color(0xfff8f3f1);
  static const Color backgroundYellow = Color(0xfffffceb);

  // Eski transparent colors
  static const Color transparentPrimary = Color(0x1478e5e5);
  static const Color transparentDark = Color(0x14004D52);
}
