import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:resturantes/Features/auth/log_in_page.dart';
import 'package:resturantes/Features/auth/presentation/manager/cubit/Login/login_cubit.dart';
import 'package:resturantes/home_page.dart';

class HomePageBuilder extends StatelessWidget {
  const HomePageBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<LoginCubit, LoginState>(
        builder: (context, state) {
          if (state is LoginSucessState) {
            return const HomePage();
          } else if (state is LoginFailureState) {
            return LogInPage(
              errMessage: state.errorMessage,
            );
          } else {
            return const LogInPage(
              isLoding: true,
            );
          }
        },
      ),
    );
  }
}
