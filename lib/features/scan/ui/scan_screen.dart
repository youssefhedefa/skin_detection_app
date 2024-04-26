import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_detection/core/assets_helper/image_helper.dart';
import 'package:skin_detection/core/networking/di.dart';
import 'package:skin_detection/core/routing/routing_constance.dart';
import 'package:skin_detection/core/shared_component/custom_text_button.dart';
import 'package:skin_detection/core/theming/app_font_styles.dart';
import 'package:skin_detection/core/theming/color_manager.dart';
import 'package:skin_detection/features/scan/cubit/scan_cubit.dart';
import 'package:skin_detection/features/scan/cubit/scan_state.dart';
import 'package:skin_detection/features/scan/data/result_model.dart';

class ScanScreen extends StatefulWidget {
  const ScanScreen({super.key});

  @override
  State<ScanScreen> createState() => _ScanScreenState();
}

class _ScanScreenState extends State<ScanScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ScanCubit>(),
      child: Scaffold(
        backgroundColor: AppColorManager.primaryColor,
        body: BlocConsumer<ScanCubit, ScanState>(
          builder: (context, state) {
            return SafeArea(
              child: Column(
                children: [
                  Padding(
                    padding:
                        REdgeInsets.symmetric(horizontal: 80.0, vertical: 80),
                    child: Center(
                      child: Image.asset(
                        AppImageHelper.scan,
                      ),
                    ),
                  ),
                  Center(
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.65.w,
                      child: Text(
                        'Let’s make your first scan !',
                        textAlign: TextAlign.center,
                        style: AppTextStylesManager.fontSemiBold32White,
                      ),
                    ),
                  ),
                  const Spacer(),
                  SizedBox(
                    width: MediaQuery.of(context).size.width - 86.w,
                    child: Column(
                      children: [
                        CustomTextButtom(
                          text: 'Upload picture',
                          onTap: () async {
                            await context
                                .read<ScanCubit>()
                                .pickImagesFromGallery();
                            await context.read<ScanCubit>().scan(
                                  image: context.read<ScanCubit>().image!,
                                );
                          },
                          textStyle: AppTextStylesManager.fontSemiBold20Black,
                          color: AppColorManager.lightPrimaryColor,
                        ),
                        SizedBox(
                          height: 24.h,
                        ),
                        CustomTextButtom(
                          text: 'Start Scanning',
                          onTap: () async {
                            await context
                                .read<ScanCubit>()
                                .pickImagesFromCamera();
                            await context.read<ScanCubit>().scan(
                                  image: context.read<ScanCubit>().image!,
                                );
                          },
                          textStyle: AppTextStylesManager.fontSemiBold20Black,
                          color: AppColorManager.lightPrimaryColor,
                        ),
                        SizedBox(
                          height: 24.h,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
          listener: (context, state) {
            if (state is Loading) {
              showDialog(
                context: context,
                builder: (context) {
                  return Center(
                    child: Container(
                      padding: const EdgeInsets.all(16.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: const CircularProgressIndicator(),
                    ),
                  );
                },
              );
            } else if (state is Error) {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: const Text('Error'),
                    content: Text(state.error),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                          Navigator.pop(context);
                        },
                        child: const Text('OK'),
                      ),
                    ],
                  );
                },
              );
            } else if (state is Success) {
              Navigator.pop(context);
              Navigator.pushNamed(
                context,
                AppRoutingConstance.resultScreen,
                arguments: ResultScreenModel(
                  result: context.read<ScanCubit>().result,
                  imageFile: context.read<ScanCubit>().imageFile!,
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
