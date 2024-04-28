import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_detection/core/routing/app_routing_manager.dart';
import 'package:skin_detection/core/routing/routing_constance.dart';
import 'package:skin_detection/core/theming/color_manager.dart';

class SkinAppMain extends StatelessWidget {

  final AppRoutingManager appRoutingManager;

  const SkinAppMain({super.key, required this.appRoutingManager});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) => MaterialApp(
        title: 'Skin Detection App',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: AppColorManager.primaryColor),
          useMaterial3: true,
        ),
        debugShowCheckedModeBanner: false,
        onGenerateRoute: appRoutingManager.generateRoute,
        initialRoute: AppRoutingConstance.onBoarding,
        //home: const TestScreen(),
      ),
    );
  }
}
