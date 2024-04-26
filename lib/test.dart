import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_detection/core/assets_helper/image_helper.dart';
import 'package:skin_detection/core/theming/app_font_styles.dart';
import 'package:skin_detection/core/theming/color_manager.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColorManager.primaryColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 40.h),
              ClipRRect(
                borderRadius: BorderRadius.circular(16),
                clipBehavior: Clip.antiAlias,
                child: Image.asset(
                  AppImageHelper.test,
                ),
              ),
              SizedBox(height: 40.h),
              Row(
                children: [
                  Text(
                    'Body Part : ',
                    style: AppTextStylesManager.fontMedium20White,
                  ),
                  SizedBox(width: 10.w),
                  Text(
                    'Head',
                    style: AppTextStylesManager.fontMedium20LightPrimary,
                  ),
                ],
              ),
              SizedBox(height: 20.h),
              Text(
                'Likely diseases : ',
                style: AppTextStylesManager.fontMedium20White,
              ),
              SizedBox(height: 10.h),
              Row(
                children: [
                  Text(
                    '1. ',
                    style: AppTextStylesManager.fontMedium20LightPrimary,
                  ),
                  Text(
                    'Melanoma ==> ',
                    style: AppTextStylesManager.fontMedium20LightPrimary,
                  ),
                  SizedBox(height: 10.h),
                  Text(
                    '0.98',
                    style: AppTextStylesManager.fontMedium20LightPrimary,
                  ),
                ],
              ),
              SizedBox(height: 10.h),
              Row(
                children: [
                  Text(
                    '1. ',
                    style: AppTextStylesManager.fontMedium20LightPrimary,
                  ),
                  Text(
                    'Melanoma ==> ',
                    style: AppTextStylesManager.fontMedium20LightPrimary,
                  ),
                  SizedBox(height: 10.h),
                  Text(
                    '0.98',
                    style: AppTextStylesManager.fontMedium20LightPrimary,
                  ),
                ],
              ),
              SizedBox(height: 10.h),
              Row(
                children: [
                  Text(
                    '1. ',
                    style: AppTextStylesManager.fontMedium20LightPrimary,
                  ),
                  Text(
                    'Melanoma ==> ',
                    style: AppTextStylesManager.fontMedium20LightPrimary,
                  ),
                  SizedBox(height: 10.h),
                  Text(
                    '0.98',
                    style: AppTextStylesManager.fontMedium20LightPrimary,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
