import 'package:flutter/material.dart';
import 'package:resturantes/constantes.dart';

class CustomLoadingButton extends StatelessWidget {
  const CustomLoadingButton({
    super.key,
    this.textColor = Colors.white,
    this.blurRadius = 8,
    this.size = 25,
    this.borderRadius = 8.0,
    this.borderColor = Colors.transparent,
    this.borderwidth = 1.2,
    this.shadowColor = kPrmiaryColor,
    required this.color,
  });
  final Color color;
  final Color textColor;
  final double blurRadius;
  final double size;
  final double borderRadius;
  final Color borderColor;
  final double borderwidth;
  final Color shadowColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
          margin: const EdgeInsets.only(left: 25, top: 17, right: 25),
          padding: EdgeInsets.all(size),
          decoration: BoxDecoration(
            color: color,
            boxShadow: [BoxShadow(color: shadowColor, blurRadius: blurRadius)],
            border: Border.all(
              color: borderColor,
              width: borderwidth,
            ),
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          child: const Center(
              child: CircularProgressIndicator(
            color: Colors.white,
          ))),
    );
  }
}
