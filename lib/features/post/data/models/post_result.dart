import 'package:meta/meta.dart';

import 'models.dart';

class PostResult {
  const PostResult({
    @required this.data,
    this.message,
  });

  factory PostResult.fromJson(String str) =>
      PostResult(data: listPostFromJson(str));

  factory PostResult.withData(List<Post> data) => PostResult(data: data);

  factory PostResult.withError(String message) => PostResult(
        data: null,
        message: message,
      );

  final List<Post> data;
  final String message;
}
