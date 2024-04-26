import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_detection/core/theming/app_font_styles.dart';
import 'package:skin_detection/features/registration/ui/shared_widgets/widgets/custom_radio.dart';

class ThirdQuestion extends StatefulWidget {
  const ThirdQuestion({super.key});

  @override
  State<ThirdQuestion> createState() => _ThirdQuestionState();
}

class _ThirdQuestionState extends State<ThirdQuestion> {

  int selectedValue = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'What is your skin color ?',
          style: AppTextStylesManager.fontSemiBold18LightPrimary,
        ),
        SizedBox(height: 36.h),
        CustomRadioButton(
          clicked: selectedValue == 0,
          text: 'Very fairy , ivory white',
          onPressed: () {
            setState(() {
              selectedValue = 0;
            });
          },
        ),
        SizedBox(height: 36.h),
        CustomRadioButton(
          clicked: selectedValue == 1,
          text: 'Fair',
          onPressed: () {
            setState(() {
              selectedValue = 1;
            });
          },
        ),
        SizedBox(height: 36.h),
        CustomRadioButton(
          clicked: selectedValue == 2,
          text: 'Light brown',
          onPressed: () {
            setState(() {
              selectedValue = 2;
            });
          },
        ),
        SizedBox(height: 36.h),
        CustomRadioButton(
          clicked: selectedValue == 3,
          text: 'Dark Brown',
          onPressed: () {
            setState(() {
              selectedValue = 3;
            });
          },
        ),
        SizedBox(height: 36.h),
        CustomRadioButton(
          clicked: selectedValue == 4,
          text: 'Black',
          onPressed: () {
            setState(() {
              selectedValue = 4;
            });
          },
        ),
      ],
    );
  }
}
