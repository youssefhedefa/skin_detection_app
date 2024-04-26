import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_detection/core/assets_helper/image_helper.dart';
import 'package:skin_detection/core/theming/color_manager.dart';

class SocialAvatar extends StatelessWidget {
  const SocialAvatar({super.key, required this.imagePath});

  final String imagePath;


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.h,
      width: 60.w,
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: Colors.transparent,
        shape: BoxShape.circle,
        border: Border.all(
          color: AppColorManager.lightPrimaryColor,
          width: 3.w,
        ),
      ),
      child: Image.asset(
          imagePath,
      ),
    );
  }
}
