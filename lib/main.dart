import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:resturantes/Features/auth/data/repos/auth_repos/auth_repos_impl.dart';
import 'package:resturantes/Features/auth/presentation/manager/cubit/Login/SignUp/sign_up_cubit.dart';
import 'package:resturantes/Features/auth/presentation/manager/cubit/Login/login_cubit.dart';
import 'package:resturantes/Features/store/data/repos/store_repos_impl.dart';
import 'package:resturantes/Features/store/presentation/manager/store_cubit/store_cubit.dart';
import 'package:resturantes/core/utils/app_route.dart';
import 'package:resturantes/core/utils/service_locator.dart';

void main() async {
  setupServiceLocator();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) => LoginCubit(getIt.get<AuthReposImpl>())),
        BlocProvider(
            create: (context) => SignUpCubit(getIt.get<AuthReposImpl>())),
        BlocProvider(
            create: (context) => StoreCubit(getIt.get<StoreRepoImpl>())),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: 'resturantes app',
        theme: ThemeData(),
        routerConfig: AppRoute.goRoute,
      ),
    );
  }
}
