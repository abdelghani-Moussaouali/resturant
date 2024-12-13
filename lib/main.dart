


import 'package:flutter/material.dart';
import 'package:resturantes/core/utils/app_route.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'resturantes app',
      theme: ThemeData(),
    routerConfig: AppRoute.goRoute,
    );
  }
}
