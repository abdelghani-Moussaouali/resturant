import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:resturantes/core/utils/app_route.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {

@override
  void initState() {
    GoRouter.of(context).push(AppRoute.kLogInPage);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scaffold(
        body: Center(child: Container(
          height: MediaQuery.sizeOf(context).height,
          color: const Color.fromARGB(255, 228, 182, 44),
          child: Image.asset('assets/images/LOGO.png'))),
      ),
    );
  }
}
