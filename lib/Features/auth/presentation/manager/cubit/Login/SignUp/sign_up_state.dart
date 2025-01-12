part of 'sign_up_cubit.dart';

sealed class SignUpState {}

final class SignUpInitialState extends SignUpState {}

final class SignUpSucessState extends SignUpState {
  final dynamic registerModel;

  SignUpSucessState({required this.registerModel});
}

final class SignUpFailureState extends SignUpState {
  final String errorMessage;

  SignUpFailureState({required this.errorMessage});
}

final class SignUpLoadinState extends SignUpState {}
