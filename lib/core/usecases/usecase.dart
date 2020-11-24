import 'package:dartz/dartz.dart';

import '../core.dart';

// ignore: one_member_abstracts
abstract class UseCase<T, Params> {
  Future<Either<Failure, T>> call(Params params);
}
