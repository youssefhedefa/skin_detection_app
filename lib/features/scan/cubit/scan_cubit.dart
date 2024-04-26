// ignore_for_file: depend_on_referenced_packages

import 'dart:io';
import 'package:dio/dio.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mime_type/mime_type.dart';
import 'package:skin_detection/core/networking/api_constance.dart';
import 'package:skin_detection/core/networking/api_service.dart';
import 'package:skin_detection/features/scan/cubit/scan_state.dart';
import 'package:skin_detection/features/scan/data/response_model.dart';
import 'package:http_parser/http_parser.dart';


class ScanCubit extends Cubit<ScanState> {
  final ApiService apiService;

  ScanCubit({required this.apiService}) : super(const ScanState.initial());

  late ResultModel result;

  XFile? imageXFile;
  File? imageFile;
  FormData? image;
  String? imageMimeType;

  Future<void> pickImagesFromGallery() async {
    final ImagePicker picker = ImagePicker();
    XFile? imageX = await picker.pickImage(source: ImageSource.gallery);
    if (imageX!.path.isNotEmpty) {
      imageXFile = imageX;
      imageFile = File(imageXFile!.path);
    }
    imageMimeType = mime(imageFile!.path);
    String name = imageMimeType!.split('/')[0];
    String type = imageMimeType!.split('/')[1];
    image = FormData.fromMap({
      'image': await MultipartFile.fromFile(
        imageFile!.path,
        filename: imageFile!.path.split('/').last,
        contentType: MediaType(name, type),
      ),
    });
  }

  Future<void> pickImagesFromCamera() async {
    final ImagePicker picker = ImagePicker();
    XFile? imageX = await picker.pickImage(source: ImageSource.camera);
    if (imageX!.path.isNotEmpty) {
      imageXFile = imageX;
      imageFile = File(imageXFile!.path);
    }
    imageMimeType = mime(imageFile!.path);
    String name = imageMimeType!.split('/')[0];
    String type = imageMimeType!.split('/')[1];
    image = FormData.fromMap({
      'image': await MultipartFile.fromFile(
        imageFile!.path,
        filename: imageFile!.path.split('/').last,
        contentType: MediaType(name, type),
      ),
    });
  }

  Future<void> scan({required FormData image}) async {
    emit(const ScanState.loading());
    try {
      result = await apiService.detectSkinDisease(
        image,
        ApiConstanse.host,
        ApiConstanse.key,
      );
      emit(ScanState.success(result));
    } catch (e) {
      emit(ScanState.error(error: e.toString()));
    }
  }
}
