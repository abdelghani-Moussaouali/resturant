import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import 'package:resturantes/Features/auth/data/models/login_model.dart';
import 'package:resturantes/Features/auth/data/models/register_model.dart';
import 'package:resturantes/Features/auth/data/repos/auth_repos/auth_repos.dart';
import 'package:resturantes/core/errors/failure.dart';
import 'package:resturantes/core/utils/api_service.dart';

class AuthReposImpl extends AuthRepos {
  final ApiService apiService;

  AuthReposImpl(this.apiService);
  @override
  Future<Either<Failure, List<LoginModel>>> fetchlogin(
      {required String email, required String password}) async {
    try {
      Map<String, dynamic> data = await apiService.post(
        data: {
          'email': email,
          'password': password,
        },
        endPoint: '/login',
      );

      List<LoginModel> result = [];
      result.add(LoginModel.fromJson(data));

      return right(result);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(errMessage: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<RegisterModel>>> fetchSignUp({
    required String name,
    required String email,
    required String password,
    required String passwordConf,
  }) async {
    try {
      Map<String, dynamic> data = await apiService.post(
        data: {
          'name': name,
          'email': email,
          'password': password,
          'password_confirmation': passwordConf,
        },
        endPoint: '/users',
      );

      List<RegisterModel> result = [];
      result.add(RegisterModel.fromJson(data));

      return right(result);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(errMessage: e.toString()));
    }
  }
}
