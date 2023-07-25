
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:handred_plus/core/common/config/theme/colors.dart';

class AppStyle {
  AppStyle._();

  static const String fontName =  'BoutrosART Medium';

  static final ElevatedButtonThemeData elevatedButtonStyle = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primary,
        foregroundColor: AppColors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(28.r)),
        padding: const EdgeInsets.symmetric(vertical: 16),
        textStyle:   TextStyle(fontSize: 20.sp,   fontFamily: fontName),
      ),
  );

  static final OutlinedButtonThemeData outlinedButtonStyle = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
        backgroundColor: AppColors.white,
        foregroundColor: AppColors.orange,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(28.r)),
        padding: const EdgeInsets.symmetric(vertical: 16),
        side: const BorderSide(color: AppColors.primary , ),
        textStyle:  TextStyle(fontSize: 20.sp,   fontFamily: fontName),)
  );

  static final TextButtonThemeData textButtonStyle = TextButtonThemeData(
    style: TextButton.styleFrom(
        backgroundColor: AppColors.white,
        foregroundColor: AppColors.primary,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        padding: const EdgeInsets.symmetric(vertical: 16),
        textStyle: const TextStyle(fontFamily: fontName)),
  );



  static TextTheme textTheme = TextTheme(
    displayLarge: TextStyle(fontSize: 26.sp,  color: AppColors.white, fontFamily: fontName),
    displayMedium: TextStyle(fontSize: 24.sp,  color: AppColors.white, fontFamily: fontName),
    displaySmall: TextStyle(fontSize: 22.sp, fontWeight: FontWeight.w600, color: AppColors.primary, fontFamily: fontName),
    headlineSmall: TextStyle(fontSize: 22.sp,  color: AppColors.textColor1, fontFamily: fontName),
    titleLarge: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold, color: AppColors.textColor, fontFamily: fontName),
    titleMedium: TextStyle(fontSize: 16.sp, color: AppColors.textColor, fontFamily: fontName),
    bodyLarge: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.bold, color: AppColors.textColor, fontFamily: fontName),
    bodyMedium: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.normal, color: AppColors.textColor, fontFamily: fontName),
    bodySmall: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.normal, color: AppColors.textColor, fontFamily: fontName),
    labelLarge: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.bold, color: AppColors.textColor, fontFamily: fontName),
    labelMedium: TextStyle(fontSize: 10.sp, fontWeight: FontWeight.normal, color: AppColors.textColor, fontFamily: fontName),
  );
}
