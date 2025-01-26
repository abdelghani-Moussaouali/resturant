import 'package:flutter/material.dart';
import 'package:resturantes/Features/auth/sign_up_second_page.dart';
import 'package:resturantes/constantes.dart';
import 'package:resturantes/core/utils/app_styles.dart';

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
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        body: Center(
          child: Form(
            key: formKey,
            child: ListView(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                Image.asset(kLogoPrincipale, height: 180),
                const Text(
                  'Create Account',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
                Text(
                  'Fill your information below ',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16, color:kgrey7Color),
                ),
                const SizedBox(
                  height: 25,
                ),
                CustomTextField(
                  validator: (data) {
                    if (data!.isEmpty) {
                      return 'Please enter username';
                    } else if (data.length < 6) {
                      return 'the username field should be at least 6 characters';
                    }
                    return null;
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
                    if (data!.isEmpty) {
                      return 'the email field is required';
                    } else if (data.length < 6) {
                      return 'the email field should be at least 6 characters';
                    }
                    return null;
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
                    if (data!.isEmpty) {
                      return 'Please enter password';
                    } else if (data.length < 6) {
                      return 'the passwrod field should be at least 6 characters';
                    }
                    return null;
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
                    if (data!.isEmpty) {
                      return 'Please enter password confirmation';
                    } else if (data.length < 6) {
                      return 'the passwrod field should be at least 6 characters';
                    } else if (data != passwordController.text) {
                      return 'the confirmation is not match the password';
                    }
                    return null;
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
                        if (formKey.currentState!.validate() == true) {
                          formKey.currentState!.save();
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return SignUpSecondPage(
                              username: nameController.text,
                              email: emailController.text,
                              password: passwordController.text,
                              passwordConf: passwordConfirmationController.text,
                            );
                          }));
                        }
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
                          child:  Center(
                            child: Text(
                              'Next',
                              style: AppStyles.nextTextStyle(color: kBottomTextColor),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
