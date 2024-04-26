import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:skin_detection/core/networking/api_constance.dart';
import 'package:skin_detection/features/scan/data/response_model.dart';
part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstanse.baseUrl)
abstract class ApiService {

  factory ApiService(Dio dio ,{ String baseUrl}) = _ApiService;

  @POST(ApiConstanse.detect)
  Future<ResultModel> detectSkinDisease(
      @Body() FormData image,
      @Header('X-RapidAPI-Host') String host,
      @Header('X-RapidAPI-Key') String key,
      );


}