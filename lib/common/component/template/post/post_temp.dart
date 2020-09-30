import 'package:flutter/material.dart';

import '../../../../features/post/post.dart';

class PostTemp extends StatelessWidget {
  const PostTemp({Key key, @required this.data}) : super(key: key);
  final List<Post> data;
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
