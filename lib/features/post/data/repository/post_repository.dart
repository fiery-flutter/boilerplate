import '../data.dart';

class PostRepository {
  final PostApiProvider _apiProvider = PostApiProvider();

  Future<PostResult> getPosts() async => await _apiProvider.getPosts();
}
