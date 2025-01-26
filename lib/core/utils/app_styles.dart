import 'package:flutter/material.dart';

class AppStyles {
  static TextStyle titlestyle24() =>
      const TextStyle(fontSize: 24, fontWeight: FontWeight.bold);

  static TextStyle subTitleWhiteStyle16() =>
      const TextStyle(color: Colors.white, fontSize: 16);

  static TextStyle titleWhiteBoldStyle18() =>
      const TextStyle(color: Colors.white, fontSize: 18);

  static TextStyle titleWhiteBoldColorStyle18({required Color color}) =>
      TextStyle(color: color, fontSize: 18);
  static TextStyle textStyle18() => const TextStyle(
        fontSize: 18,
      );

  static TextStyle nextTextStyle({required Color color}) => TextStyle(
        color: color,
        fontWeight: FontWeight.bold,
        fontSize: 18,
      );

  static TextStyle priceStyle20() =>
      const TextStyle(fontSize: 20, fontWeight: FontWeight.bold);
}
