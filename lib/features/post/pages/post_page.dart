import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../common/component/component.dart';
import '../post.dart';

class PostPage extends StatefulWidget {
  @override
  _PostPageState createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  @override
  void initState() {
    context.bloc<PostBloc>()..add(GetPostEvent());
    BlocProvider.of<PostBloc>(context)..add(GetPostEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Post Page'),
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return BlocBuilder<PostBloc, PostState>(
      builder: (context, state) {
        print(state);
        if (state is PostLoading) {
          return const CircularProgressIndicator();
        } else if (state is Postloaded) {
          return PostTemp(data: state.data);
        } else if (state is PostError) {
          return Center(
            child: Text('Ada Error: ${state.message}'),
          );
        }
        return Container();
      },
    );
  }
}
