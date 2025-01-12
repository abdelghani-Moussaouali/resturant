import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import 'package:resturantes/Features/auth/presentation/manager/cubit/Login/SignUp/sign_up_cubit.dart';
import 'package:resturantes/Features/auth/presentation/manager/cubit/Login/login_cubit.dart';
import 'package:resturantes/constantes.dart';
import 'package:resturantes/core/utils/app_route.dart';

import 'package:resturantes/core/widget/custom_button.dart';

class SignUpSecondPage extends StatefulWidget {
  const SignUpSecondPage(
      {super.key,
      required this.username,
      required this.email,
      required this.password,
      required this.passwordConf});
  final String username;
  final String email;
  final String password;
  final String passwordConf;

  @override
  State<SignUpSecondPage> createState() => _SignUpSecondPageState();
}

class _SignUpSecondPageState extends State<SignUpSecondPage> {
  File? image;
  Future imagePicker() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.camera);
      if (image == null) return;
      final imageTemporary = File(image.path);

      setState(() {
        this.image = imageTemporary;
      });
    } on Exception catch (e) {
      print('Error:  $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(),
              const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child: Text(
                    'add your profile image',
                    style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
                  )),
              const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child: Text(
                    'Please upload an image to set as your profile picture. This helps personalize your account!',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  )),
              const SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 170,
                    width: 170,
                    decoration: BoxDecoration(
                        border: Border.all(width: 5, color: Colors.white),
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.black,
                              spreadRadius: 0.5,
                              blurRadius: 5)
                        ],
                        image: const DecorationImage(
                            image: AssetImage(kImageuser)),
                        borderRadius: BorderRadius.circular(90)),
                  ),
                ],
              ),
              const Spacer(),
              CustomButton(
                size: 18,
                text: 'upload image',
                ontap: imagePicker,
                color: kPrmiaryColor,
                borderRadius: 15,
              ),
              CustomButton(
                size: 18,
                borderRadius: 15,
                // blurRadius: 0.0,
                text: 'skip',
                ontap: () {
                  BlocProvider.of<SignUpCubit>(context).fetchSignUp(
                    name: widget.username,
                    email: widget.email,
                    password: widget.password,
                    passwordConf: widget.passwordConf,
                  );
                  GoRouter.of(context)
                      .pushReplacement(AppRoute.kSignUpPageBuilder);
                },
                color: Colors.white,
                textColor: Colors.black,
                // borderColor: Colors.black,
                shadowColor: kPrmiaryColor,
              ),
              const Spacer(),
            ],
          ),
        ));
  }
}
