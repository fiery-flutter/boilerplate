import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import '../../data/data.dart';

part 'post_event.dart';
part 'post_state.dart';

class PostBloc extends Bloc<PostEvent, PostState> {
  PostBloc() : super(PostLoading());

  final PostRepository _repository = PostRepository();

  @override
  Stream<PostState> mapEventToState(
    PostEvent event,
  ) async* {
    if (event is GetPostEvent) {
      yield* _mapGetPostToState();
    }
  }

  Stream<PostState> _mapGetPostToState() async* {
    try {
      yield PostLoading();
      final result = await _repository.getPosts();
      if (result.data != null && result.message == null) {
        yield Postloaded(data: result.data);
      } else {
        yield PostError(message: result.message);
      }
    } catch (e) {
      print('Error get Posts in Bloc: $e');
      yield PostError(message: e.toString());
    }
  }
}
