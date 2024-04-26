import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_detection/core/theming/app_font_styles.dart';
import 'package:skin_detection/features/quetions/ui/widgets/custom_drop_down_list.dart';
import 'package:skin_detection/features/registration/ui/shared_widgets/widgets/custom_radio.dart';

class FirstQuestion extends StatefulWidget {
  const FirstQuestion({super.key});

  @override
  State<FirstQuestion> createState() => _FirstQuestionState();
}

class _FirstQuestionState extends State<FirstQuestion> {

  int selectedValue = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'How old are you ?',
          style: AppTextStylesManager.fontSemiBold18LightPrimary,
        ),
        SizedBox(height: 36.h),
        CustomRadioButton(
          clicked: selectedValue == 0,
          text: 'Under 30 years',
          onPressed: () {
            setState(() {
              selectedValue = 0;
            });
          },
        ),
        SizedBox(height: 36.h),
        CustomRadioButton(
          clicked: selectedValue == 1,
          text: '30 - 50 years',
          onPressed: () {
            setState(() {
              selectedValue = 1;
            });
          },
        ),
        SizedBox(height: 36.h),
        CustomRadioButton(
          clicked: selectedValue == 2,
          text: '60+ years',
          onPressed: () {
            setState(() {
              selectedValue = 2;
            });
          },
        ),
        SizedBox(height: 46.h),
        Text(
          'Where is the suspicion area located ?',
          style: AppTextStylesManager.fontSemiBold18LightPrimary,
        ),
        SizedBox(height: 36.h),
        const EditDropDownItem(
          label: 'Select Area',
          hintText: 'Select Area',
          menuItems: [
            'Face',
            'Neck',
            'Back',
            'Legs',
            'Hands',
          ],
        ),
      ],
    );
  }
}
