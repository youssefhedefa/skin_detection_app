import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_detection/core/theming/app_font_styles.dart';
import 'package:skin_detection/features/registration/ui/shared_widgets/widgets/custom_radio.dart';

class SecondQuestion extends StatefulWidget {
  const SecondQuestion({super.key});

  @override
  State<SecondQuestion> createState() => _SecondQuestionState();
}

class _SecondQuestionState extends State<SecondQuestion> {

  int selectedValue = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Have you recently undergone any surgeries or medical procedures ?',
          style: AppTextStylesManager.fontSemiBold18LightPrimary,
        ),
        SizedBox(height: 36.h),
        CustomRadioButton(
          clicked: selectedValue == 0,
          text: 'Yes',
          onPressed: () {
            setState(() {
              selectedValue = 0;
            });
          },
        ),
        SizedBox(height: 36.h),
        CustomRadioButton(
          clicked: selectedValue == 1,
          text: 'No',
          onPressed: () {
            setState(() {
              selectedValue = 1;
            });
          },
        ),
      ],
    );
  }
}
