import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_detection/core/theming/app_font_styles.dart';
import 'package:skin_detection/core/theming/color_manager.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      required this.fieldLabel,
      required this.controller,
      required this.hint,
      required this.keyboardType,
      this.isPassword,
      this.onEyeTap,
      this.isEyeTap,
      this.validator});

  final String fieldLabel;
  final TextEditingController controller;
  final String hint;
  final TextInputType keyboardType;
  final bool? isPassword;
  final void Function()? onEyeTap;
  final bool? isEyeTap;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          fieldLabel,
          style: AppTextStylesManager.fontMedium18White,
        ),
        const SizedBox(height: 8.0),
        TextFormField(
          style: AppTextStylesManager.fontMedium18Black,
          controller: controller,
          keyboardType: keyboardType,
          obscureText: isEyeTap!,
          validator: validator,
          decoration: InputDecoration(
            contentPadding: REdgeInsets.symmetric(horizontal: 16.0,vertical: 12),
            filled: true,
            fillColor: Colors.white,
            hintText: hint,
            errorStyle: AppTextStylesManager.fontMedium14LightPrimary,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: const BorderSide(
                color: AppColorManager.lightPrimaryColor,
                width: 2,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: const BorderSide(
                color: AppColorManager.lightPrimaryColor,
                width: 2,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: const BorderSide(
                color: AppColorManager.lightPrimaryColor,
                width: 2,
              ),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: const BorderSide(
                color: Colors.redAccent,
              ),
            ),
            suffixIcon: isPassword!
                ? IconButton(
                    onPressed: onEyeTap,
                    icon: Icon(
                      isEyeTap! ? Icons.visibility : Icons.visibility_off,
                      color: AppColorManager.lightPrimaryColor,
                    ),
                  )
                : null,
          ),
        )
      ],
    );
  }
}
