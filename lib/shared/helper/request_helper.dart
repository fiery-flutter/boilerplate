import 'dart:async';

import 'package:dio/dio.dart';

import '../config.dart';
import 'helper.dart';

class RequestHelper {
  Dio _dio = Dio();
  final String baseUrl;

  RequestHelper({this.baseUrl = Config.BASE_URL}) {
    _dio.options.baseUrl = baseUrl;
    _dio.interceptors.add(DioLoggingInterceptors(_dio));
  }

  Future<Response> getRequest(String url) async {
    final response = await _dio.get(
      "$url",
      options: Options(
        contentType: 'application/json',
        responseType: ResponseType.json,
        headers: {
          "Accept": "*/*",
        },
      ),
    );
    return response;
  }

  Future<Response> putRequest(String url, dynamic body) async {
    final response = await _dio.put(
      "$url",
      data: FormData.fromMap(body),
      options: Options(
        contentType: 'application/json',
        responseType: ResponseType.json,
        headers: {
          "Accept": "*/*",
        },
      ),
    );

    return response;
  }

  Future<Response> patchRequest(String url, dynamic body) async {
    final response = await _dio.patch("$url",
        options: Options(
          contentType: 'application/json',
          responseType: ResponseType.json,
          headers: {
            "Accept": "*/*",
          },
        ),
        data: FormData.fromMap(body));

    return response;
  }

  Future<Response> postRequest(String url, dynamic body) async {
    final response = await _dio.post(
      url,
      data: body,
      options: Options(
        contentType: Headers.jsonContentType,
        responseType: ResponseType.json,
        headers: {
          "Accept": "*/*",
        },
      ),
    );
    return response;
  }

  Future<Response> postRequestRefreshToken(String url) async {
    final response = await _dio.post(
      "$url",
      options: Options(
        contentType: Headers.jsonContentType,
        responseType: ResponseType.json,
        headers: {
          "Accept": "*/*",
        },
      ),
    );

    return response;
  }
}
