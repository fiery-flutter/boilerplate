import 'dart:convert';

import 'package:dio/dio.dart';

import '../../../../shared/helper/helper.dart';
import '../models/models.dart';

class PostApiProvider {
  final RequestHelper _request = RequestHelper();

  Future<PostResult> getPosts() async {
    try {
      final result = await _request.getRequest('/posts');
      if (result.statusCode == 200) {
        return PostResult.fromJson(json.encode(result.data));
      } else {
        return PostResult.withError('Ada Sesuatu error nih...');
      }
    } on DioError catch (e) {
      print('Error GetPosts: $e');
      return PostResult.withError(e.error.toString());
    }
  }
}
