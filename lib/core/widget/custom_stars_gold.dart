import 'package:flutter/material.dart';
import 'package:resturantes/constantes.dart';


class CustomStarsGold extends StatelessWidget {
  const CustomStarsGold({
    super.key,
    this.itemCount = 0,
  });
  final int itemCount;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        itemCount > 5 ? 5 : itemCount,
        (index) {
          return const Icon(
            Icons.star_rounded,
            color: kGoldColor,
          );
        },
      ),
    );
  }
}

