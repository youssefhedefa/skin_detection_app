import 'package:flutter/material.dart';
import 'package:skin_detection/core/theming/app_font_styles.dart';
import 'package:skin_detection/features/registration/ui/shared_widgets/widgets/custom_radio.dart';

class PassRow extends StatefulWidget {
  const PassRow({super.key});

  @override
  State<PassRow> createState() => _PassRowState();
}

class _PassRowState extends State<PassRow> {

  bool isRememberMe = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width,
      child: Row(
        children: [
          CustomRadioButton(
            clicked: isRememberMe,
            text: 'Remember Me',
            onPressed: () {
              setState(() {
                isRememberMe = !isRememberMe;
              });
            },
          ),
          const Spacer(),
          Text(
              'Forgot Password?',
            style: AppTextStylesManager.fontMedium14LightPrimary,
          ),
        ],
      ),
    );
  }
}
