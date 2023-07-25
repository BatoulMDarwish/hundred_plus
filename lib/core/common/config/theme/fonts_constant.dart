import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FontConstants {
  static const String fontFamily =  'BoutrosART Medium';
}

class FontWeightManager {
  static  FontWeight get light => FontWeight.w300;

  static FontWeight get regular => FontWeight.normal;

  static FontWeight get medium => FontWeight.w500;

  static  FontWeight get semiBold => FontWeight.w600;

  static FontWeight get bold => FontWeight.bold;

  static FontWeight get extraBold => FontWeight.w800;
}

class FontSize {
  static double get text_64 => textFontSize_64.sp;

  static const double textFontSize_64 = 64;

  static double get text_36 => textFontSize_36.sp;

  static const double textFontSize_36 = 36;

  static double get text_24 => textFontSize_24.sp;
  static const double textFontSize_24 = 24;

  static double get text_22 => textFontSize_22.sp;
  static const double textFontSize_22 = 22;

  static double get text_24text_20 => textFontSize_20.sp;
  static const double textFontSize_20 = 20;

  static double get text_18 => textFontSize_18.sp;
  static const double textFontSize_18 = 18;

  static double get text_16 => textFontSize_16.sp;
  static const double textFontSize_16 = 16;

  static double get text_13 => textFontSize_13.sp;
  static const double textFontSize_13 = 13;

  static double get text_11 => textFontSize_11.sp;
  static const double textFontSize_11 = 10;
}
