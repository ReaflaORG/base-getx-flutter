import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import '../models/base_response_model.dart';
import '../service/auth_service.dart';

/// 프로바이더
class Provider with DioMixin implements Dio {
  static Future<BaseResponseModel> dio({
    required String method,
    required String url,
    dynamic requestModel,
  }) async {
    try {
      Map<String, dynamic> headers = {};

      if (AuthService.to.isLogin.value) {
        headers['Authorization'] = 'Bearer ${AuthService.to.accessToken.value}';
      }

      // if (token != null) {
      //   headers['Authorization'] = 'Bearer $token';
      // }

      final Dio dio = Dio(
        BaseOptions(
          baseUrl: "${dotenv.env["APP_SERVER_URL"]}/$url",
          // contentType: Headers.jsonContentType,
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
        onRequest: (options, handler) {
          return handler.next(options);
        },
        onResponse: (response, handler) {
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
      throw Exception(e);
    }
  }
}
