import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_detection/core/routing/routing_constance.dart';
import 'package:skin_detection/core/shared_component/custom_text_button.dart';
import 'package:skin_detection/core/shared_component/custom_text_field.dart';
import 'package:skin_detection/core/theming/app_font_styles.dart';
import 'package:skin_detection/core/theming/color_manager.dart';
import 'package:skin_detection/features/registration/ui/shared_widgets/widgets/pass_row.dart';

class LogInForm extends StatefulWidget {
  const LogInForm({super.key});

  @override
  State<LogInForm> createState() => _LogInFormState();
}

class _LogInFormState extends State<LogInForm> {
  bool isPasswordObscure = true;

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          CustomTextField(
            controller: emailController,
            fieldLabel: 'Your E-mail',
            hint: 'Enter your email',
            keyboardType: TextInputType.emailAddress,
            isPassword: false,
            isEyeTap: false,
            validator: (value) {
              if (value!.isEmpty) {
                return 'Email is required';
              }
              return null;
            },
          ),
          SizedBox(height: 44.h),
          CustomTextField(
            controller: passwordController,
            fieldLabel: 'Password',
            hint: 'Enter your Password',
            keyboardType: isPasswordObscure
                ? TextInputType.visiblePassword
                : TextInputType.text,
            isEyeTap: isPasswordObscure,
            isPassword: true,
            onEyeTap: () {
              isPasswordObscure = !isPasswordObscure;
              setState(() {});
            },
            validator: (value) {
              if (value!.isEmpty) {
                return 'Password is required';
              }
              return null;
            },
          ),
          SizedBox(height: 28.h),
          const PassRow(),
          SizedBox(height: 28.h),
          Padding(
            padding: REdgeInsets.symmetric(horizontal: 40.0),
            child: CustomTextButtom(
              text: 'LOGIN',
              textStyle: AppTextStylesManager.fontSemiBold20Black,
              color: AppColorManager.lightPrimaryColor,
              onTap: () {
                if (formKey.currentState!.validate()) {
                  Navigator.pushNamed(context, AppRoutingConstance.questionsScreen);
                  print(
                      'Email: ${emailController.text} Password: ${passwordController.text}');
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
