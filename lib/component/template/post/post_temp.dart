import 'package:flutter/material.dart';

import '../../../modules/post/post.dart';

class PostTemp extends StatelessWidget {
  final List<Post> data;

  const PostTemp({Key key, @required this.data}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (_, i) {
        return ListTile(
          title: Text(data[i].title),
          subtitle: Text(data[i].body),
        );
      },
      itemCount: data.length,
    );
  }
}
