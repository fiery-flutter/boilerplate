import 'package:dio/dio.dart';

import 'helper.dart';

class DioLoggingInterceptors extends InterceptorsWrapper {
  DioLoggingInterceptors(this._dio);
  final Dio _dio;
  final CacheHelper _cacheHelper = CacheHelper();

  @override
  Future onRequest(RequestOptions options) async {
    print('--> '
        '${options.method != null ? options.method.toUpperCase() : "METHOD"}'
        ' ${(options.baseUrl ?? ') + (options.path ?? ')}');
    print('Headers:');
    options.headers.forEach((k, v) => print('$k: $v'));
    if (options.queryParameters != null) {
      print('queryParameters:');
      options.queryParameters.forEach((k, v) => print('$k: $v'));
    }
    if (options.data != null) {
      print('Body: ${options.data}');
    }
    print('--> '
        'END '
        '${options.method != null ? options.method.toUpperCase() : 'METHOD'}');

    if (options.headers.containsKey('requirestoken')) {
      options.headers.remove('requirestoken');
      print(
          'accessToken: ${_cacheHelper.getString(CacheHelper.accessTokenKey)}');
      String accessToken = _cacheHelper.getString(CacheHelper.accessTokenKey);
      options.headers.addAll({'Authorization': 'Bearer $accessToken'});
    }
    return options;
  }

  @override
  Future onResponse(Response response) {
    print(
      '<-- ${response.statusCode} ' +
          (response.request != null
              ? (response.request.baseUrl + response.request.path)
              : 'URL'),
    );
    print('Headers:');
    response.headers?.forEach((k, v) => print('$k: $v'));
    print('Response: ${response.data}');
    print('<-- END HTTP');
    return super.onResponse(response);
  }

  @override
  Future onError(DioError dioError) async {
    print(
      '<-- ${dioError.message} ' +
          (dioError.response?.request != null
              ? (dioError.response.request.baseUrl +
                  dioError.response.request.path)
              : 'URL'),
    );
    print(
      dioError.response != null ? '${dioError.response.data}' : 'Unknown Error',
    );
    print('<-- End error');

    int responseCode = dioError.response.statusCode;
    String oldAccessToken = _cacheHelper.getString(CacheHelper.accessTokenKey);
    if (oldAccessToken != null && responseCode == 401 && _cacheHelper != null) {
      _dio.interceptors.requestLock.lock();
      _dio.interceptors.responseLock.lock();

      //! TODO: Save cache refresh token
      // String refreshToken =
      //     _cacheHelper.getString(CacheHelper.REFRESH_TOKEN_KEY);
      // RefreshTokenBody refreshTokenBody =
      //     RefreshTokenBody('refresh_token', refreshToken);
      // ApiAuthRepository apiAuthRepository = ApiAuthRepository();
      // // Token token = await apiAuthRepository.postRefreshAuth(refreshTokenBody);
      // String newAccessToken = token.accessToken;
      // String newRefreshToken = token.refreshToken;
      // await _cacheHelper.putString(
      //     CacheHelper.ACCESS_TOKEN_KEY, newAccessToken);
      // await _cacheHelper.putString(
      //     CacheHelper.REFRESH_TOKEN_KEY, newRefreshToken);

      RequestOptions options = dioError.response.request;
      options.headers.addAll({'requirestoken': true});
      _dio.interceptors.requestLock.unlock();
      _dio.interceptors.responseLock.unlock();
      return _dio.request(options.path, options: options);
    } else {
      super.onError(dioError);
    }
  }
}
