import 'dart:io';

import 'package:dio/dio.dart';

import '../core.dart';

class NetworkConfig {
  BaseOptions baseOptions({String baseUrl}) => BaseOptions(
        baseUrl: baseUrl ?? GlobalConfig.baseUrl,
        connectTimeout: 5000,
        receiveTimeout: 5000,
        headers: {HttpHeaders.userAgentHeader: 'dio', 'common-header': 'xx'},
      );
}
