// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResultModel _$ResultModelFromJson(Map<String, dynamic> json) => ResultModel(
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
      errorCode: json['error_code'] as num?,
      errorDetail: json['error_detail'] == null
          ? null
          : ErrorDetail.fromJson(json['error_detail'] as Map<String, dynamic>),
      logId: json['log_id'] as String?,
      requestId: json['request_id'] as String?,
    );

Map<String, dynamic> _$ResultModelToJson(ResultModel instance) =>
    <String, dynamic>{
      'data': instance.data,
      'error_code': instance.errorCode,
      'error_detail': instance.errorDetail,
      'log_id': instance.logId,
      'request_id': instance.requestId,
    };

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      imageQuality: json['image_quality'] as num?,
      bodyPart: json['body_part'] as String?,
      resultsEnglish: json['results_english'] == null
          ? null
          : ResultsEnglish.fromJson(
              json['results_english'] as Map<String, dynamic>),
      imageType: json['image_type'] as String?,
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'image_quality': instance.imageQuality,
      'body_part': instance.bodyPart,
      'results_english': instance.resultsEnglish,
      'image_type': instance.imageType,
    };

ResultsEnglish _$ResultsEnglishFromJson(Map<String, dynamic> json) =>
    ResultsEnglish(
      herpes: json['herpes'] as num?,
      folliculitis: json['folliculitis'] as num?,
      herpesSimplex: json['herpes_simplex'] as num?,
    );

Map<String, dynamic> _$ResultsEnglishToJson(ResultsEnglish instance) =>
    <String, dynamic>{
      'herpes': instance.herpes,
      'folliculitis': instance.folliculitis,
      'herpes_simplex': instance.herpesSimplex,
    };

ErrorDetail _$ErrorDetailFromJson(Map<String, dynamic> json) => ErrorDetail(
      statusCode: json['status_code'] as num?,
      code: json['code'] as String?,
      codeMessage: json['code_message'] as String?,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$ErrorDetailToJson(ErrorDetail instance) =>
    <String, dynamic>{
      'status_code': instance.statusCode,
      'code': instance.code,
      'code_message': instance.codeMessage,
      'message': instance.message,
    };
