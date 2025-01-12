import 'package:resturantes/Features/auth/data/models/user_model.dart';

class RegisterModel {
  final String token;
  final UserModel userModel;

  RegisterModel({required this.token, required this.userModel});

  factory RegisterModel.fromJson(Map<String, dynamic> json) {
    return RegisterModel(
      token: json['token'],
      userModel: UserModel.fromJson(json['user']),
    );
  }
}
