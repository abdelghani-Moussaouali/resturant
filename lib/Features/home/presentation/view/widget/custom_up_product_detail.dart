
import 'package:flutter/material.dart';
import 'package:resturantes/constantes.dart';

class CustomUpProductDetail extends StatelessWidget {
  const CustomUpProductDetail({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height * 0.45,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          image: const DecorationImage(
            scale: 1.9,
            image: AssetImage(
              kImageIphone14,
            ),
          )
          ),
    );
  }
}
