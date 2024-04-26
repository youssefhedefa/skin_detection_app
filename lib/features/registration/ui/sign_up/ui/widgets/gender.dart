import 'package:flutter/material.dart';
import 'package:skin_detection/core/theming/app_font_styles.dart';
import 'package:skin_detection/features/registration/ui/shared_widgets/widgets/custom_radio.dart';

class GenderSelections extends StatefulWidget {
  const GenderSelections({super.key});

  @override
  State<GenderSelections> createState() => _GenderSelectionsState();
}

class _GenderSelectionsState extends State<GenderSelections> {
  List<String> genders = ['Male', 'Female'];
  late String selectedGender;

  int selectedGenderIndex = 0;

  @override
  void initState() {
    selectedGender = genders[0];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Gender',
          style: AppTextStylesManager.fontMedium18White,
        ),
        const SizedBox(height: 18),
        Row(
          children: [
            CustomRadioButton(
              clicked: selectedGenderIndex == 0 ? true : false,
              text: 'Male',
              onPressed: (){
                selectedGenderIndex = 0;
                setState(() {
                });
              },
            ),
            CustomRadioButton(
              clicked: selectedGenderIndex == 1 ? true : false,
              text: 'Female',
              onPressed: (){
                selectedGenderIndex = 1;
                setState(() {
                });
              },
            ),
          ],
        ),
      ],
    );
  }
}
