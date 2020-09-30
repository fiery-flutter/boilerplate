part of 'post_bloc.dart';

abstract class PostState extends Equatable {
  const PostState();

  @override
  List<Object> get props => [];
}

class PostLoading extends PostState {}

class Postloaded extends PostState {
  Postloaded({@required this.data});

  final List<Post> data;
}

class PostError extends PostState {
  PostError({@required this.message});

  final String message;
}
