import 'package:flutter/material.dart';
import 'package:resturantes/constantes.dart';
import 'package:resturantes/core/utils/app_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    required this.ontap,
    required this.color,
    this.textColor = Colors.white,
    this.blurRadius = 8,
    this.size = 25,
    this.borderRadius = 8.0,
    this.borderColor = Colors.transparent,
    this.borderwidth = 1.2,
    this.shadowColor = kPrmiaryColor,
  });
  final String text;
  final Function()? ontap;
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
      onTap: ontap,
      child: Container(
          margin: const EdgeInsets.only(left: 25, top: 17, right: 25),
          padding: EdgeInsets.all(size),
          decoration: BoxDecoration(
            boxShadow: [BoxShadow(color: shadowColor, blurRadius: blurRadius)],
            color: color,
            border: Border.all(
              color: borderColor,
              width: borderwidth,
            ),
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          child: Center(
            child: Text(text,
                style: AppStyles.titleWhiteBoldColorStyle18(color: textColor)),
          )),
    );
  }
}
