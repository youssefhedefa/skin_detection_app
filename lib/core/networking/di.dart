

import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:skin_detection/core/networking/api_factory.dart';
import 'package:skin_detection/core/networking/api_service.dart';
import 'package:skin_detection/features/scan/cubit/scan_cubit.dart';

final getIt = GetIt.instance;

Future<void> setUpSetIt() async {
  // dio && api service
  Dio dio = await DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio,),);

  getIt.registerLazySingleton<ScanCubit>(() => ScanCubit(apiService: getIt<ApiService>()));

}