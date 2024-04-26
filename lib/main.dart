import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skin_detection/bloc_observer.dart';
import 'package:skin_detection/core/networking/di.dart';
import 'package:skin_detection/core/routing/app_routing_manager.dart';
import 'package:skin_detection/skin_app_main.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setUpSetIt();
  Bloc.observer = MyBlocObserver();
  runApp(SkinAppMain(appRoutingManager: AppRoutingManager(),));
}

