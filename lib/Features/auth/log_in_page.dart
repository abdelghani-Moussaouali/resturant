import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:resturantes/Features/auth/presentation/manager/cubit/login_cubit.dart';
import 'package:resturantes/constantes.dart';

import 'package:resturantes/core/utils/app_route.dart';
import 'package:resturantes/core/widget/custom_social_media_buttom.dart';
import 'package:resturantes/core/widget/custom_text_field.dart';
import 'package:resturantes/core/widget/my_button.dart';

class LogInPage extends StatefulWidget {
  static String id = 'LogiPage';
  const LogInPage({super.key});

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  final emailController = TextEditingController();
  final passwordConroller = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  // void loginUserIn() {}
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
                const SizedBox(
                  height: 25,
                ),
                Image.asset('assets/images/LOGO.png', height: 180),
                const SizedBox(
                  height: 25,
                ),
                const Text(
                  'LOG IN NOW',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
                Text(
                  'please login to continue our app',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16, color: Colors.grey[500]),
                ),
                const SizedBox(
                  height: 25,
                ),
                CustomTextField(
                  onChanged: (value) {
                    emailController.text = value;
                  },
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
                  onChanged: (value) {
                    passwordConroller.text = value;
                  },
                  controller: passwordConroller,
                  hintText: 'password',
                  obscureText: true,
                  icon: Icons.lock,
                ),
                const SizedBox(
                  height: 10,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Forget Password?',
                        style: TextStyle(color: kPrmiaryColor),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                CustomButton(
                  text: 'Log in',
                  ontap: () {
                    if (formKey.currentState!.validate() == true) {
                      formKey.currentState!.save();
                      BlocProvider.of<LoginCubit>(context).fetchLoginMessage(
                          email: emailController.text,
                          password: passwordConroller.text);
                      GoRouter.of(context).push(AppRoute.kHomePagePrin);
                    }
                  },
                  color: kPrmiaryColor,
                ),
                const SizedBox(
                  height: 17,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('don\'t have an account? '),
                      GestureDetector(
                          onTap: () {
                            GoRouter.of(context).push(AppRoute.kSignUpPage);
                          },
                          child: const Text(
                            'Sign up',
                            style: TextStyle(color: kPrmiaryColor),
                          )),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 7.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey[600],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text(
                          'Or continue with',
                          style: TextStyle(color: Colors.grey[700]),
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey[600],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomSocialMediaButtom(
                      path: 'assets/images/facebook.png',
                      ontap: () {
                        // Navigator.popAndPushNamed(context, 'www.google.com');
                      },
                    ),
                    CustomSocialMediaButtom(
                      path: 'assets/images/google.png',
                      ontap: () {},
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
