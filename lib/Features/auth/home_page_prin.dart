import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:resturantes/Features/auth/presentation/manager/cubit/login_cubit.dart';
import 'package:resturantes/home_page.dart';

class HomePagePrin  extends StatelessWidget {
  const HomePagePrin ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  BlocBuilder<LoginCubit, LoginState>(
          builder: (context, state) {
            if (state is LoginSucessState) {
             return HomePage();
            } else if (state is LoginFailureState) {
              return Center(child: Text(state.errorMessage));
            } else {
              return const Center(child: CircularProgressIndicator());
            }
          },
        ),
    );
  }
}