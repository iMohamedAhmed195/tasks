import 'package:task/features/home/domain/entities/user.dart';

class UserModel extends User {
  const UserModel({required super.id, required super.name});

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      UserModel(id: json["id"], name: json["name"]);
}
