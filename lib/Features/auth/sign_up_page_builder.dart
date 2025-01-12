import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:resturantes/Features/auth/log_in_page.dart';
import 'package:resturantes/Features/auth/presentation/manager/cubit/Login/SignUp/sign_up_cubit.dart';
import 'package:resturantes/home_page.dart';

class SignUpPageBuilder extends StatelessWidget {
  const SignUpPageBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<SignUpCubit, SignUpState>(builder: (context, state) {
        if (state is SignUpSucessState) {
          return const HomePage();
        } else if (state is SignUpFailureState) {
          // return LogInPage(
          //   errMessage: state.errorMessage,
          // );
          return Center(child: Text(state.errorMessage));
        } else {
          // return const LogInPage(
          //   isLoding: true,
          // );
          return const Center(child: CircularProgressIndicator());
        }
      }),
    );
  }
}
