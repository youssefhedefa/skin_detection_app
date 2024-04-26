import 'package:flutter/material.dart';
import 'package:skin_detection/core/theming/app_font_styles.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key, required this.text, required this.clickableText, this.onTap}) : super(key: key);

  final String text;
  final String clickableText;
  final void Function()? onTap;


  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text,
          style: AppTextStylesManager.fontMedium20White,
        ),
        GestureDetector(
          onTap: onTap,
          child:  Text(
            clickableText,
            style: AppTextStylesManager.fontMedium20LightPrimary,
          ),
        ),
      ],
    );
  }
}