import 'package:dartz/dartz.dart';
import 'package:resturantes/Features/auth/data/models/login_model.dart';
import 'package:resturantes/Features/auth/data/models/register_model.dart';
import 'package:resturantes/core/errors/failure.dart';

abstract class AuthRepos {
  Future<Either<Failure, List<LoginModel>>> fetchlogin(
      {required String email, required String password});

  Future<Either<Failure, List<RegisterModel>>> fetchSignUp(
      {required String name,
      required String email,
      required String password,
      required String passwordConf});
}
