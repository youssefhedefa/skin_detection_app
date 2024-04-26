import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_detection/core/theming/app_font_styles.dart';
import 'package:skin_detection/core/theming/color_manager.dart';


class OrDivider extends StatelessWidget {
  const OrDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: REdgeInsets.symmetric(horizontal: 40.0),
      child: Row(
        children: [
          const Expanded(child: Divider(color: AppColorManager.lightPrimaryColor)),
          Padding(
            padding: REdgeInsets.symmetric(horizontal: 10.0),
            child: Text(
              'OR',
              style: AppTextStylesManager.fontSemiBold20White,
            ),
          ),
          const Expanded(child: Divider(color: AppColorManager.lightPrimaryColor)),
        ],
      ),
    );
  }
}
