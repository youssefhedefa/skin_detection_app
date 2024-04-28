import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_detection/core/theming/app_font_styles.dart';
import 'package:skin_detection/core/theming/color_manager.dart';
import 'package:skin_detection/features/scan/data/result_model.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key, required this.result});

  final ResultScreenModel result;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColorManager.primaryColor,
      appBar: AppBar(
        backgroundColor: AppColorManager.primaryColor,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: AppColorManager.lightPrimaryColor,
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20.h),
              ClipRRect(
                borderRadius: BorderRadius.circular(16),
                clipBehavior: Clip.antiAlias,
                child: Image.file(
                  result.imageFile,
                ),
              ),
              SizedBox(height: 60.h),
              Row(
                children: [
                  Text(
                    'Body Part : ',
                    style: AppTextStylesManager.fontMedium20White,
                  ),
                  SizedBox(width: 10.w),
                  Text(
                    result.result.data!.bodyPart!,
                    style: AppTextStylesManager.fontMedium20LightPrimary,
                  ),
                ],
              ),
              SizedBox(height: 30.h),
              Text(
                'Likely diseases : ',
                style: AppTextStylesManager.fontMedium20White,
              ),
              SizedBox(height: 20.h),
              Row(
                children: [
                  Text(
                    '1. ',
                    style: AppTextStylesManager.fontMedium20LightPrimary,
                  ),
                  Text(
                    'herpes ==> ',
                    style: AppTextStylesManager.fontMedium20LightPrimary,
                  ),
                  SizedBox(height: 10.h),
                  Text(
                    result.result.data!.resultsEnglish!.herpes.toString(),
                    style: AppTextStylesManager.fontMedium20LightPrimary,
                  ),
                ],
              ),
              SizedBox(height: 20.h),
              Row(
                children: [
                  Text(
                    '2. ',
                    style: AppTextStylesManager.fontMedium20LightPrimary,
                  ),
                  Text(
                    'folliculitis ==> ',
                    style: AppTextStylesManager.fontMedium20LightPrimary,
                  ),
                  SizedBox(height: 10.h),
                  Text(
                    result.result.data!.resultsEnglish!.folliculitis.toString(),
                    style: AppTextStylesManager.fontMedium20LightPrimary,
                  ),
                ],
              ),
              SizedBox(height: 20.h),
              Row(
                children: [
                  Text(
                    '3. ',
                    style: AppTextStylesManager.fontMedium20LightPrimary,
                  ),
                  Text(
                    'herpes simplex ==> ',
                    style: AppTextStylesManager.fontMedium20LightPrimary,
                  ),
                  SizedBox(height: 10.h),
                  Text(
                    result.result.data!.resultsEnglish!.herpesSimplex.toString(),
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
