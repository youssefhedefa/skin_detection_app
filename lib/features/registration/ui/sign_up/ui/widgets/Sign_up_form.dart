import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_detection/core/routing/routing_constance.dart';
import 'package:skin_detection/core/shared_component/custom_text_button.dart';
import 'package:skin_detection/core/shared_component/custom_text_field.dart';
import 'package:skin_detection/core/theming/app_font_styles.dart';
import 'package:skin_detection/core/theming/color_manager.dart';
import 'package:skin_detection/features/registration/ui/sign_up/ui/widgets/gender.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  bool isPasswordObscure = true;

  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          SizedBox(
            width: MediaQuery.sizeOf(context).width,
            child: Row(
              children: [
                SizedBox(
                  width: (MediaQuery.sizeOf(context).width / 2) - 32.0.w,
                  child: CustomTextField(
                    isPassword: false,
                    isEyeTap: false,
                    fieldLabel: 'First Name',
                    controller: firstNameController,
                    hint: 'First Name',
                    keyboardType: TextInputType.text,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'First name is required';
                      }
                      return null;
                    },
                  ),
                ),
                const Spacer(),
                SizedBox(
                  width: (MediaQuery.sizeOf(context).width / 2) - 32.0.w,
                  child: CustomTextField(
                    isPassword: false,
                    isEyeTap: false,
                    fieldLabel: 'Last Name',
                    controller: lastNameController,
                    hint: 'Last Name',
                    keyboardType: TextInputType.text,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Last name is required';
                      }
                      return null;
                    },
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 14.h),
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
          SizedBox(height: 30.h),
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
          SizedBox(height: 30.h),
          CustomTextField(
            controller: confirmPasswordController,
            fieldLabel: 'Confirm Password',
            hint: 'Enter your Password Again',
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
          const GenderSelections(),
          SizedBox(height: 28.h),
          Padding(
            padding: REdgeInsets.symmetric(horizontal: 40.0),
            child: CustomTextButtom(
              verticalPadding: 14,
              text: 'Get Started',
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
