import 'package:dartz/dartz.dart';
import 'package:task/core/error/exceptions.dart';
import 'package:task/core/error/failure.dart';
import 'package:task/features/home/data/datasource/get_users_remote_data_source.dart';
import 'package:task/features/home/domain/entities/user.dart';
import 'package:task/features/home/domain/repo/base_get_users_repo.dart';

class GetUsersRepo extends BaseGetUsersRepo {
  BaseGetUsersRemoteDataSource baseGetUsersRemoteDataSource;
  GetUsersRepo(this.baseGetUsersRemoteDataSource);
  @override
  Future<Either<Failure, List<User>>> getUsers() async {
    final result = await baseGetUsersRemoteDataSource.getUsers();
    try {
      return Right(result);
    } on ServerException catch (failure) {
      return Left(ServerFailure(failure.errorMessageModel.statusMessage));
    }
  }
}
