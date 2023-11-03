import 'package:task/core/error/exceptions.dart';
import 'package:task/core/network/api_constance.dart';
import 'package:task/core/network/error_message_model.dart';
import 'package:task/core/services/dio_helper.dart';
import 'package:task/core/services/services_locator.dart';
import 'package:task/features/home/data/models/user_model.dart';

abstract class BaseGetUsersRemoteDataSource {
  Future<List<UserModel>> getUsers();
}

class GetUsersRemoteDataSource extends BaseGetUsersRemoteDataSource {
  @override
  Future<List<UserModel>> getUsers() async {
    List<UserModel> allUsers = [];
    final response = await sl<DioHelper>().getData(url: ApiConstance.users);
    if (response.statusCode == 200) {
      for (var element in response.data as List) {
        allUsers.add(UserModel.fromJson(element));
      }
      return allUsers;
    } else {
      throw ServerException(
        errorMessageModel: ErrorMessageModel.fromJson(response.data),
      );
    }
  }
}
