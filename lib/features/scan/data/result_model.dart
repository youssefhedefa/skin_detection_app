import 'dart:io';

import 'package:skin_detection/features/scan/data/response_model.dart';

class ResultScreenModel{
  final ResultModel result;
  final File imageFile;
  likely(){
    return result.data!.resultsEnglish;
  }

  ResultScreenModel({required this.result, required this.imageFile});
}