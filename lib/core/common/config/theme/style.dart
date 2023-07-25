
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:handred_plus/core/common/config/theme/colors.dart';

import 'fonts_constant.dart';

class AppStyle {
  AppStyle._();



  static final ElevatedButtonThemeData elevatedButtonStyle = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primary,
        foregroundColor: AppColors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(28.r)),
        padding: const EdgeInsets.symmetric(vertical: 16),
        textStyle:  textTheme.titleMedium,
      ),
  );

  static final OutlinedButtonThemeData outlinedButtonStyle = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
        backgroundColor: AppColors.white,
        foregroundColor: AppColors.orange,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(28.r)),
        padding: const EdgeInsets.symmetric(vertical: 16),
        side: const BorderSide(color: AppColors.primary , ),
        textStyle:textTheme.titleMedium ,)
  );

  static final TextButtonThemeData textButtonStyle = TextButtonThemeData(
    style: TextButton.styleFrom(
        backgroundColor: AppColors.white,
        foregroundColor: AppColors.primary,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        padding: const EdgeInsets.symmetric(vertical: 16),
        textStyle:textTheme.titleMedium),
  );



  static TextTheme textTheme = TextTheme(
    displayLarge: TextStyle(fontSize: FontSize.text_64, fontWeight: FontWeightManager.bold, color: AppColors.textColor1, fontFamily: FontConstants.fontFamily),
    displayMedium: TextStyle(fontSize: FontSize.text_36,fontWeight: FontWeightManager.semiBold, color: AppColors.textColor1, fontFamily:  FontConstants.fontFamily),
    displaySmall: TextStyle(fontSize: FontSize.text_24, fontWeight: FontWeightManager.semiBold, color: AppColors.primary, fontFamily:  FontConstants.fontFamily),
    headlineSmall: TextStyle(fontSize:FontSize.text_24,fontWeight: FontWeightManager.regular, color: AppColors.textColor1, fontFamily:  FontConstants.fontFamily),
    titleLarge: TextStyle(fontSize: FontSize.text_22, fontWeight: FontWeightManager.regular , color: AppColors.textColor1, fontFamily:  FontConstants.fontFamily),
    titleMedium: TextStyle(fontSize: FontSize.textFontSize_20 ,fontWeight:  FontWeightManager.regular, color: AppColors.textColor1, fontFamily:  FontConstants.fontFamily),
    bodyLarge: TextStyle(fontSize: FontSize.text_18, fontWeight:FontWeightManager.bold, color: AppColors.textColor1, fontFamily:  FontConstants.fontFamily),
    bodyMedium: TextStyle(fontSize: FontSize.text_18, fontWeight:FontWeightManager.regular, color: AppColors.textColor1, fontFamily:  FontConstants.fontFamily),
    bodySmall: TextStyle(fontSize: FontSize.text_16, fontWeight: FontWeightManager.regular, color: AppColors.textColor1, fontFamily:  FontConstants.fontFamily),
    labelLarge: TextStyle(fontSize: FontSize.text_13, fontWeight: FontWeightManager.regular, color: AppColors.textColor1, fontFamily:  FontConstants.fontFamily),
    labelMedium: TextStyle(fontSize: FontSize.textFontSize_11, fontWeight: FontWeightManager.regular, color: AppColors.textColor1, fontFamily:  FontConstants.fontFamily),
  );
}
