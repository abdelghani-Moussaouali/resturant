import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:resturantes/constantes.dart';
import 'package:resturantes/core/utils/app_route.dart';

import 'package:resturantes/core/widget/custom_text_field.dart';

class SignUpPage extends StatefulWidget {
  static String id = 'SignUpPage';
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final nameController = TextEditingController();
  final passwordConfirmationController = TextEditingController();

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        body: Center(
          child: ListView(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            children: [
              Image.asset('assets/images/LOGO.png', height: 180),
              const Text(
                'Create Account',
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
              Text(
                'Fill your information below ',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: Colors.grey[500]),
              ),
              const SizedBox(
                height: 25,
              ),
              CustomTextField(
                validator: (data) {
                  return data;
                },
                password: false,
                controller: nameController,
                hintText: 'Name',
                obscureText: false,
                icon: Icons.person,
              ),
              const SizedBox(
                height: 15,
              ),
              CustomTextField(
                validator: (data) {
                  return data;
                },
                password: false,
                controller: emailController,
                hintText: 'Email',
                obscureText: false,
                icon: Icons.email,
              ),
              const SizedBox(
                height: 15,
              ),
              CustomTextField(
                validator: (data) {
                  return data;
                },
                password: true,
                controller: passwordController,
                hintText: 'Password',
                obscureText: true,
                icon: Icons.password,
              ),
              const SizedBox(
                height: 15,
              ),
              CustomTextField(
                validator: (data) {
                  return data;
                },
                password: true,
                controller: passwordConfirmationController,
                hintText: 'confirm your password',
                obscureText: true,
                icon: Icons.lock,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () {
                      GoRouter.of(context).push(AppRoute.kSignUpSecondPage);
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 25.0, vertical: 12),
                      child: Container(
                        decoration: BoxDecoration(
                            color: kPrmiaryColor,
                            borderRadius: BorderRadius.circular(10)),
                        height: 60,
                        width: 100,
                        child: const Center(
                          child: Text(
                            'Next',
                            style: TextStyle(
                                color: Colors.amber,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ));
  }
}
