import 'package:dartz/dartz.dart';
import 'package:task/core/error/failure.dart';
import 'package:task/features/home/domain/entities/user.dart';

abstract class BaseGetUsersRepo {
  Future<Either<Failure, List<User>>> getUsers();
}
