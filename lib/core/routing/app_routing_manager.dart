import 'package:flutter/material.dart';
import 'package:skin_detection/core/routing/routing_constance.dart';
import 'package:skin_detection/features/on_bourding/ui/on_boarding_view.dart';
import 'package:skin_detection/features/quetions/ui/quetions_screen.dart';
import 'package:skin_detection/features/registration/ui/log_in/ui/log_in_screen.dart';
import 'package:skin_detection/features/registration/ui/sign_up/ui/sign_up_screen.dart';
import 'package:skin_detection/features/scan/data/result_model.dart';
import 'package:skin_detection/features/scan/ui/result_screen.dart';
import 'package:skin_detection/features/scan/ui/scan_screen.dart';


class AppRoutingManager {


  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {

      case AppRoutingConstance.onBoarding:
        return MaterialPageRoute(
          builder: (context) => const OnBoardingScreen(),
        );

      case AppRoutingConstance.logIn:
        return MaterialPageRoute(
          builder: (context) => const LogInScreen(),
        );

        case AppRoutingConstance.signUp:
        return MaterialPageRoute(
          builder: (context) => const SignUpScreen(),
        );

        case AppRoutingConstance.questionsScreen:
        return MaterialPageRoute(
          builder: (context) => const QuestionsScreen(),
        );

        case AppRoutingConstance.scanScreen:
        return MaterialPageRoute(
          builder: (context) => const ScanScreen(),
        );

        case AppRoutingConstance.resultScreen:
          var args = settings.arguments as ResultScreenModel;
        return MaterialPageRoute(
          builder: (context) => ResultScreen(result: args),
        );

      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
