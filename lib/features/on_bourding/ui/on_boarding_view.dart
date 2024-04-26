import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_detection/core/assets_helper/image_helper.dart';
import 'package:skin_detection/core/routing/app_routing_manager.dart';
import 'package:skin_detection/core/routing/routing_constance.dart';
import 'package:skin_detection/core/shared_component/custom_text_button.dart';
import 'package:skin_detection/core/theming/app_font_styles.dart';
import 'package:skin_detection/core/theming/color_manager.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColorManager.primaryColor,
      body: SafeArea(
        child: Column(
          // mainAxisSize: MainAxisSize.max,
          children: [
            SizedBox(height: 36.h),
            Text(
              'Skin Diseases',
              style: AppTextStylesManager.fontSemiBold32White,
            ),
            Expanded(
              child: Padding(
                padding: REdgeInsets.only(left: 40.0),
                child: Image.asset(
                  AppImageHelper.onBoarding,
                ),
              ),
            ),
            Padding(
              padding: REdgeInsets.only(
                  left: 56.0,
                right: 56.0,
                bottom: 40.0,
              ),
              child: CustomTextButtom(
                color: AppColorManager.lightPrimaryColor,
                text: 'Get Started',
                textStyle: AppTextStylesManager.fontSemiBold20Black,
                onTap: (){
                  Navigator.pushNamed(context, AppRoutingConstance.logIn);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
