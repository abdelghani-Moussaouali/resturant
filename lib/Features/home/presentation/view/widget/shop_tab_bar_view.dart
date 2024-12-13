
import 'package:flutter/material.dart';
import 'package:resturantes/Features/home/presentation/view/widget/custom_product_capacity.dart';
import 'package:resturantes/Features/home/presentation/view/widget/custom_product_colors.dart';
import 'package:resturantes/Features/home/presentation/view/widget/custom_product_features.dart';
import 'package:resturantes/Features/home/presentation/view/widget/custom_total_price.dart';

class ShopTabBarView extends StatelessWidget {
  const ShopTabBarView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 22.0,horizontal: 18),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomProductFeatures(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomProductColors(),
              CustomProductCapacity(),
            ],
          ),
          CustomTotalPrice()
        ],
      ),
    );
  }
}

