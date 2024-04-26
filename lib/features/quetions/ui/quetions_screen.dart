import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_detection/core/routing/routing_constance.dart';
import 'package:skin_detection/core/shared_component/custom_text_button.dart';
import 'package:skin_detection/core/theming/app_font_styles.dart';
import 'package:skin_detection/core/theming/color_manager.dart';
import 'package:skin_detection/features/quetions/ui/widgets/custom_circle.dart';
import 'package:skin_detection/features/quetions/ui/widgets/first_question.dart';
import 'package:skin_detection/features/quetions/ui/widgets/forth_question.dart';
import 'package:skin_detection/features/quetions/ui/widgets/second_question.dart';
import 'package:skin_detection/features/quetions/ui/widgets/third_question.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  int currentIndex = 0;
  List<Widget> questions = [
    const FirstQuestion(),
    const SecondQuestion(),
    const ThirdQuestion(),
    const ForthQuestion(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColorManager.primaryColor,
      appBar: AppBar(
          backgroundColor: AppColorManager.primaryColor,
          automaticallyImplyLeading: false,),
      body: Padding(
        padding: REdgeInsets.symmetric(horizontal: 40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CustomCircle(
                  selected: currentIndex >= 0,
                ),
                const Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 4.0),
                    child: Divider(
                      color: AppColorManager.lightPrimaryColor,
                      thickness: 2,
                    ),
                  ),
                ),
                CustomCircle(
                  selected: currentIndex >= 1,
                ),
                const Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 4.0),
                    child: Divider(
                      color: AppColorManager.lightPrimaryColor,
                      thickness: 2,
                    ),
                  ),
                ),
                CustomCircle(
                  selected: currentIndex >= 2,
                ),
                const Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 4.0),
                    child: Divider(
                      color: AppColorManager.lightPrimaryColor,
                      thickness: 2,
                    ),
                  ),
                ),
                CustomCircle(
                  selected: currentIndex >= 3,
                ),
              ],
            ),
            SizedBox(height: 40.h),
            questions[currentIndex],
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                currentIndex == 0 ? const Spacer() :
                  CustomTextButtom(
                    onTap: () {
                      setState(() {
                        currentIndex--;
                      });
                    },
                    text: 'Back',
                    textStyle: AppTextStylesManager.fontMedium18Black,
                    color: AppColorManager.lightPrimaryColor,
                  ),
                CustomTextButtom(
                  onTap: () {
                    if (currentIndex == 3) {
                      Navigator.pushNamed(context, AppRoutingConstance.scanScreen);
                    } else {
                      setState(() {
                        currentIndex++;
                      });
                    }
                  },
                  text: currentIndex == 3 ? 'Finish' : 'Next',
                  textStyle: AppTextStylesManager.fontMedium18Black,
                  color: AppColorManager.lightPrimaryColor,
                ),
              ],
            ),
            SizedBox(height: 40.h),
          ],
        ),
      ),
    );
  }
}
