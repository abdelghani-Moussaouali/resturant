import 'package:dio/dio.dart';

import 'package:get_it/get_it.dart';
import 'package:resturantes/Features/auth/data/repos/auth_repos/login_repos_impl.dart';
import 'package:resturantes/core/utils/api_service.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton<ApiService>(ApiService(Dio()));
  getIt.registerSingleton<LoginReposImpl>(
      LoginReposImpl(getIt.get<ApiService>()));
}
