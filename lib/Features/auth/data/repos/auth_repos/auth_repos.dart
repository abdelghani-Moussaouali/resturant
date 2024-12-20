import 'package:dartz/dartz.dart';
import 'package:resturantes/Features/auth/data/models/login_model.dart';
import 'package:resturantes/core/errors/failure.dart';
abstract class LoginRepos {
  Future <Either<Failure,List<LoginModel>>> fetchlogin({required String email,required String password});
  Future <Either<Failure,List<LoginModel>>> fetchSignUp({required String email,required String password});
  
}