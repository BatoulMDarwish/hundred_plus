

import 'package:flutter/material.dart';
import 'package:handred_plus/core/common/config/theme/colors.dart';
import 'package:handred_plus/core/common/config/theme/style.dart';



class AppTheme {
  AppTheme._();

  static final lightTheme = ThemeData(
    primaryColor: AppColors.primary,
    textTheme: AppStyle.textTheme,
    fontFamily: AppStyle.fontName,
    elevatedButtonTheme: AppStyle.elevatedButtonStyle,
    outlinedButtonTheme: AppStyle.outlinedButtonStyle,
    textButtonTheme: AppStyle.textButtonStyle,

  );
}
