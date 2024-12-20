import 'package:flutter/material.dart';

class CustomSocialMediaButtom extends StatelessWidget {
  const CustomSocialMediaButtom({super.key, required this.path, required this.ontap});
  final String path;
  final VoidCallback ontap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Container(
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.white)),
        child: Image.asset(
          path,
          height: 40,
        ),
      ),
    );
  }
}