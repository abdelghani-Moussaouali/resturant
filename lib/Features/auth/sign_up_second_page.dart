import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:resturantes/constantes.dart';

import 'package:resturantes/core/widget/my_button.dart';

class SignUpSecondPage extends StatefulWidget {
  const SignUpSecondPage({super.key});

  @override
  State<SignUpSecondPage> createState() => _SignUpSecondPageState();
}

class _SignUpSecondPageState extends State<SignUpSecondPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final nameController = TextEditingController();
  final passwordConfirmationController = TextEditingController();

  File? image;
  Future imagePicker() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.camera);
      if (image == null) return;
      final imageTemporary = File(image.path);

      setState(() {
        this.image = imageTemporary;
        print(image.path);
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
                        image: const DecorationImage(image: AssetImage(kImageuser)),
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
                ontap: () async {},
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
