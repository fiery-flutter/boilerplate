part of 'post_bloc.dart';

abstract class PostState extends Equatable {
  const PostState();

  @override
  List<Object> get props => [];
}

class PostLoading extends PostState {}

class Postloaded extends PostState {
  final List<Post> data;

  Postloaded({@required this.data});
}

class PostError extends PostState {
  final String message;

  PostError({@required this.message});
}
