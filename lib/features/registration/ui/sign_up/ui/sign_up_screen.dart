import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_detection/core/assets_helper/image_helper.dart';
import 'package:skin_detection/core/routing/routing_constance.dart';
import 'package:skin_detection/core/theming/app_font_styles.dart';
import 'package:skin_detection/core/theming/color_manager.dart';
import 'package:skin_detection/features/registration/ui/shared_widgets/widgets/footer.dart';
import 'package:skin_detection/features/registration/ui/shared_widgets/widgets/or_Divider.dart';
import 'package:skin_detection/features/registration/ui/shared_widgets/widgets/social_avatar.dart';
import 'package:skin_detection/features/registration/ui/sign_up/ui/widgets/Sign_up_form.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColorManager.primaryColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              children: [
                SizedBox(height: 56.h),
                Center(
                  child: Text(
                    'Create Account',
                    style: AppTextStylesManager.fontBold26White,
                  ),
                ),
                SizedBox(height: 28.h),
                const SignUpForm(),
                SizedBox(height: 28.h),
                const OrDivider(),
                Padding(
                  padding: REdgeInsets.symmetric(horizontal: 60.0.h,vertical: 22.w),
                  child: const Row(
                    children: [
                      SocialAvatar(
                        imagePath: AppImageHelper.faceBook,
                      ),
                      Spacer(),
                      SocialAvatar(
                        imagePath: AppImageHelper.apple,
                      ),
                      Spacer(),
                      SocialAvatar(
                        imagePath: AppImageHelper.google,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 34.h),
                Footer(
                  text: 'Already have an account? ',
                  clickableText: 'Sign in',
                  onTap: () {
                    Navigator.pushNamed(context, AppRoutingConstance.logIn);
                  },
                ),
                SizedBox(height: 34.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
