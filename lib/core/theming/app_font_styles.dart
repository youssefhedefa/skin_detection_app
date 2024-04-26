import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_detection/core/theming/color_manager.dart';
import 'package:skin_detection/core/theming/font_weight_helper.dart';

abstract class AppTextStylesManager{

  static TextStyle fontSemiBold32White = TextStyle(
    fontSize: 32.sp,
    color: Colors.white,
    fontWeight: AppFontWeightHelper.semiBold,
    fontFamily: 'Inter',
  );

  static TextStyle fontBold26White = TextStyle(
    fontSize: 26.sp,
    color: Colors.white,
    fontWeight: AppFontWeightHelper.bold,
    fontFamily: 'Inter',
  );

  static TextStyle fontSemiBold20Black = TextStyle(
    fontSize: 20.sp,
    color: Colors.black,
    fontWeight: AppFontWeightHelper.semiBold,
    fontFamily: 'Inter',
  );

  static TextStyle fontSemiBold20White = TextStyle(
    fontSize: 20.sp,
    color: Colors.white,
    fontWeight: AppFontWeightHelper.semiBold,
    fontFamily: 'Inter',
  );

  static TextStyle fontMedium20White = TextStyle(
    fontSize: 20.sp,
    color: Colors.white,
    fontWeight: AppFontWeightHelper.medium,
    fontFamily: 'Inter',
  );

  static TextStyle fontMedium20LightPrimary = TextStyle(
    fontSize: 20.sp,
    color: AppColorManager.lightPrimaryColor,
    fontWeight: AppFontWeightHelper.medium,
    fontFamily: 'Inter',
  );

  static TextStyle fontMedium18White = TextStyle(
    fontSize: 18.sp,
    color: Colors.white,
    fontWeight: AppFontWeightHelper.medium,
    fontFamily: 'Inter',
  );

  static TextStyle fontMedium16White = TextStyle(
    fontSize: 16.sp,
    color: Colors.white,
    fontWeight: AppFontWeightHelper.medium,
    fontFamily: 'Inter',
  );
  static TextStyle fontMedium14LightPrimary = TextStyle(
    fontSize: 14.sp,
    color: AppColorManager.lightPrimaryColor,
    fontWeight: AppFontWeightHelper.medium,
    fontFamily: 'Inter',
  );

  static TextStyle fontSemiBold18LightPrimary = TextStyle(
    fontSize: 18.sp,
    color: AppColorManager.lightPrimaryColor,
    fontWeight: AppFontWeightHelper.semiBold,
    fontFamily: 'Inter',
  );

  static TextStyle fontMedium18Black = TextStyle(
    fontSize: 18.sp,
    color: Colors.black,
    fontWeight: AppFontWeightHelper.medium,
    fontFamily: 'Inter',
  );

}