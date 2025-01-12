part of 'login_cubit.dart';

sealed class LoginState {}

final class LoginInitial extends LoginState {}

final class LoginFailureState extends LoginState {
  final String errorMessage;

  LoginFailureState({required this.errorMessage});
}

final class LoginSucessState extends LoginState {
  final dynamic model;

  LoginSucessState({required this.model});
}

final class LoginLoadingeState extends LoginState {}
