import 'package:flutter/material.dart';
import 'package:skin_detection/core/theming/app_font_styles.dart';
import 'package:skin_detection/core/theming/color_manager.dart';


class CustomRadioButton extends StatelessWidget {
  const CustomRadioButton({super.key, required this.clicked, required this.text, this.onPressed});

  final bool clicked;
  final String text;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          icon: Icon(
            clicked ? Icons.radio_button_checked_rounded : Icons.radio_button_off ,
            color: AppColorManager.lightPrimaryColor,
            size: 30,
          ),
          onPressed: onPressed,
        ),
        Text(
          text,
          style: AppTextStylesManager.fontMedium16White,
        ),
      ],
    );
  }
}
