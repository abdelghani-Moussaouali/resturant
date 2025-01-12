import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:resturantes/core/widget/custom_like_button.dart';
import 'package:resturantes/core/widget/custom_stars_gold.dart';

class CustomProductInfo extends StatelessWidget {
  const CustomProductInfo({
    super.key, required this.name,
  });
final String name;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: const TextStyle(color: Colors.white, fontSize: 24),
              ),
              const SizedBox(
                height: 08.0,
              ),
              const SizedBox(
                width: 120,
                child: CustomStarsGold(
                itemCount: 5,
                ),
              )
            ],
          ),
          const CustomLikeButton(
            backgroundColor: Colors.white,
          )
        ],
      ),
    );
  }
}

