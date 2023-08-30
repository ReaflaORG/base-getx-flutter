import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import '../models/base_response_model.dart';
import '../service/auth_service.dart';
import '../service/loading_service.dart';

/// 프로바이더
class Provider with DioMixin implements Dio {
  static Future<BaseResponseModel> dio({
    required String method,
    required String url,
    String? requestContentType = 'application/json',
    dynamic requestModel,
  }) async {
    try {
      Map<String, dynamic> headers = {};

      if (AuthService.to.accessToken.value.isNotEmpty ||
          AuthService.to.accessToken.value != '') {
        headers['Authorization'] = 'Bearer ${AuthService.to.accessToken.value}';
      }

      // if (token != null) {
      //   headers['Authorization'] = 'Bearer $token';
      // }

      // 타입 체크
      headers['Content-Type'] = requestContentType;

      final Dio dio = Dio(
        BaseOptions(
          baseUrl: "${dotenv.env["APP_SERVER_URL"]}/$url",
          // contentType: requestModel == FormData
          //     ? 'multipart/form-data'
          //     : 'application/json',
          // responseType: ResponseType.json,
          maxRedirects: 5,
          connectTimeout: const Duration(seconds: 60000),
          sendTimeout: const Duration(seconds: 60 * 1000),
          receiveTimeout: const Duration(seconds: 60 * 1000),
          followRedirects: false,
          validateStatus: (status) {
            return status! <= 500;
          },
          headers: headers,
        ),
      );
      late Response<Map<String, dynamic>> response;

      dio.interceptors.add(InterceptorsWrapper(
        onRequest: (options, handler) async {
          // 로딩 처리
          if (!url.contains('common') && !url.contains('notification')) {
            LoadingService.to.isLoading.value = true;
            LoadingService.to.isButtonLoading.value = true;
          }
          return handler.next(options);
        },
        onResponse: (response, handler) async {
          // 로딩 처리
          if (!url.contains('common') && !url.contains('notification')) {
            await Future.delayed(const Duration(milliseconds: 500));
            LoadingService.to.isLoading.value = false;
            LoadingService.to.isButtonLoading.value = false;
          }
          return handler.next(response);
        },
        onError: (e, handler) {
          return handler.next(e);
        },
      ));

      if (kDebugMode) {
        // Logger().d(requestModel);
      }

      switch (method.toUpperCase()) {
        case 'POST':
          response = await dio.post('', data: requestModel);
          break;
        case 'GET':
          response = await dio.get('');
          break;
        case 'PUT':
          response = await dio.put('', data: requestModel);
          break;
        case 'PATCH':
          response = await dio.patch('', data: requestModel);
          break;
        case 'DELETE':
          response = await dio.delete('');
          break;
        default:
          throw Exception('Method Not Found');
      }

      if (kDebugMode) {
        // Logger().d(response.statusCode);
        // // Logger().d(response.data);
      }

      return BaseResponseModel.fromJson(
        statusCode: response.statusCode!,
        data: response.data,
      );
    } on DioException catch (e) {
      // 로딩 해제
      LoadingService.to.isButtonLoading.value = false;
      LoadingService.to.isLoading.value = false;

      throw Exception(e);
    }
  }
}
