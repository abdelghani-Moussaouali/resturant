import 'package:flutter/material.dart';

class CustomSocialMediaButtom extends StatelessWidget {
  const CustomSocialMediaButtom(
      {super.key, required this.path, required this.ontap});
  final String path;
  final VoidCallback ontap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Container(
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            boxShadow: const [
              BoxShadow(
                color: Colors.black12,
                offset: Offset(0, 2),
                blurRadius: 5,
              ),
            ]),
        child: Image.asset(
          path,
          height: 40,
        ),
      ),
    );
  }
}
