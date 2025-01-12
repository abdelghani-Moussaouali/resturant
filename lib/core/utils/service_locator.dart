import 'package:dio/dio.dart';

import 'package:get_it/get_it.dart';
import 'package:resturantes/Features/auth/data/repos/auth_repos/auth_repos_impl.dart';
import 'package:resturantes/Features/store/data/repos/store_repos_impl.dart';
import 'package:resturantes/core/utils/api_service.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton<ApiService>(ApiService(Dio()));
  getIt
      .registerSingleton<AuthReposImpl>(AuthReposImpl(getIt.get<ApiService>()));
  getIt
      .registerSingleton<StoreRepoImpl>(StoreRepoImpl(getIt.get<ApiService>()));
}
