import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_detection/core/theming/app_font_styles.dart';
import 'package:skin_detection/features/registration/ui/shared_widgets/widgets/custom_radio.dart';

class ForthQuestion extends StatefulWidget {
  const ForthQuestion({super.key});

  @override
  State<ForthQuestion> createState() => _ForthQuestionState();
}

class _ForthQuestionState extends State<ForthQuestion> {

  int selectedValue = 1;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Have you ever had skin cancer ?',
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
