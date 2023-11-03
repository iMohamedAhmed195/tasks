import 'package:dartz/dartz.dart';
import 'package:task/core/error/failure.dart';
import 'package:task/core/usecase/base_usecase.dart';
import 'package:task/features/home/domain/entities/user.dart';
import 'package:task/features/home/domain/repo/base_get_users_repo.dart';

class GetUsersUseCase extends BaseUseCase<List<User>, NoParameters> {
  BaseGetUsersRepo baseGetUsersRepo;
  GetUsersUseCase(this.baseGetUsersRepo);
  @override
  Future<Either<Failure, List<User>>> call(parameters) async {
    return await baseGetUsersRepo.getUsers();
  }
}
