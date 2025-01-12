import 'package:bloc/bloc.dart';
import 'package:resturantes/Features/auth/data/repos/auth_repos/auth_repos_impl.dart';

part 'sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit(this.loginReposImpl) : super(SignUpInitialState());

  final AuthReposImpl loginReposImpl;

  Future<void> fetchSignUp({
    required String name,
    required String email,
    required String password,
    required String passwordConf,
  }) async {
    emit(SignUpLoadinState());
    var result = await loginReposImpl.fetchSignUp(
        name: name,
        email: email,
        password: password,
        passwordConf: passwordConf);

    result.fold((error) {
      emit(SignUpFailureState(errorMessage: error.errMessage));
    }, (result) {
      emit(SignUpSucessState(registerModel: result));
    });
  }
}
