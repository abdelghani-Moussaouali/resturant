import 'package:flutter/material.dart';
import 'package:resturantes/constantes.dart';

class CustomUpProductDetail extends StatelessWidget {
  const CustomUpProductDetail({
    super.key, required this.image,
  });
final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height * 0.45,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          image:  DecorationImage(
            fit: BoxFit.cover,
            scale: 1.9,
            image: NetworkImage(
              image,
            ),
          )),
    );
  }
}
