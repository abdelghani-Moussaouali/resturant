import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:resturantes/Features/auth/data/repos/auth_repos/login_repos_impl.dart';
import 'package:resturantes/Features/auth/presentation/manager/cubit/login_cubit.dart';
import 'package:resturantes/core/utils/app_route.dart';
import 'package:resturantes/core/utils/service_locator.dart';

void main() {
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
            create: (context) =>
                LoginCubit(getIt.get<LoginReposImpl>())),
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
