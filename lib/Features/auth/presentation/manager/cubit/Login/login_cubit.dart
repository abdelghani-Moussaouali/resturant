import 'package:bloc/bloc.dart';
import 'package:resturantes/Features/auth/data/repos/auth_repos/auth_repos_impl.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(
    this.loginReposImpl,
  ) : super(LoginInitial());

  final AuthReposImpl loginReposImpl;

  Future<void> fetchLoginMessage(
      {required String email, required String password}) async {
    emit(LoginLoadingeState());

    var result =
        await loginReposImpl.fetchlogin(email: email, password: password);

    result.fold((errorMessage) {
      emit(LoginFailureState(errorMessage: errorMessage.errMessage));
    }, (correctMessage) {
      emit(LoginSucessState(model: correctMessage));
    });
  }
}
