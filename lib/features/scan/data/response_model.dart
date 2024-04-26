import 'package:json_annotation/json_annotation.dart';

part 'response_model.g.dart';

@JsonSerializable()
class ResultModel {
  ResultModel({
    required this.data,
    required this.errorCode,
    required this.errorDetail,
    required this.logId,
    required this.requestId,
  });

  final Data? data;
  static const String dataKey = "data";


  @JsonKey(name: 'error_code')
  final num? errorCode;
  static const String errorCodeKey = "error_code";


  @JsonKey(name: 'error_detail')
  final ErrorDetail? errorDetail;
  static const String errorDetailKey = "error_detail";


  @JsonKey(name: 'log_id')
  final String? logId;
  static const String logIdKey = "log_id";


  @JsonKey(name: 'request_id')
  final String? requestId;
  static const String requestIdKey = "request_id";


  factory ResultModel.fromJson(Map<String, dynamic> json) => _$ResultModelFromJson(json);

  Map<String, dynamic> toJson() => _$ResultModelToJson(this);

}

@JsonSerializable()
class Data {
  Data({
    required this.imageQuality,
    required this.bodyPart,
    required this.resultsEnglish,
    required this.imageType,
  });

  @JsonKey(name: 'image_quality')
  final num? imageQuality;
  static const String imageQualityKey = "image_quality";


  @JsonKey(name: 'body_part')
  final String? bodyPart;
  static const String bodyPartKey = "body_part";


  @JsonKey(name: 'results_english')
  final ResultsEnglish? resultsEnglish;
  static const String resultsEnglishKey = "results_english";


  @JsonKey(name: 'image_type')
  final String? imageType;
  static const String imageTypeKey = "image_type";


  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);

}

@JsonSerializable()
class ResultsEnglish {
  ResultsEnglish({
    required this.herpes,
    required this.folliculitis,
    required this.herpesSimplex,
  });

  final num? herpes;
  static const String herpesKey = "herpes";

  final num? folliculitis;
  static const String folliculitisKey = "folliculitis";


  @JsonKey(name: 'herpes_simplex')
  final num? herpesSimplex;
  static const String herpesSimplexKey = "herpes_simplex";


  factory ResultsEnglish.fromJson(Map<String, dynamic> json) => _$ResultsEnglishFromJson(json);

  Map<String, dynamic> toJson() => _$ResultsEnglishToJson(this);

}

@JsonSerializable()
class ErrorDetail {
  ErrorDetail({
    required this.statusCode,
    required this.code,
    required this.codeMessage,
    required this.message,
  });

  @JsonKey(name: 'status_code')
  final num? statusCode;
  static const String statusCodeKey = "status_code";

  final String? code;
  static const String codeKey = "code";


  @JsonKey(name: 'code_message')
  final String? codeMessage;
  static const String codeMessageKey = "code_message";

  final String? message;
  static const String messageKey = "message";


  factory ErrorDetail.fromJson(Map<String, dynamic> json) => _$ErrorDetailFromJson(json);

  Map<String, dynamic> toJson() => _$ErrorDetailToJson(this);

}
