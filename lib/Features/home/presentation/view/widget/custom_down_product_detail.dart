
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:resturantes/Features/home/presentation/view/widget/custom_product_info.dart';
import 'package:resturantes/Features/home/presentation/view/widget/custom_tab_bar.dart';
import 'package:resturantes/Features/home/presentation/view/widget/custom_tab_bar_view.dart';
import 'package:resturantes/constantes.dart';
class CustomDownProductDetail extends StatelessWidget {
  const CustomDownProductDetail({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height,
      width: MediaQuery.sizeOf(context).width,
      color: kPrmiaryColor,
      child: const Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 12.0,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CustomProductInfo(),
            CustomTabBar(),
            CustomTabBarView()
          ],
        ),
      ),
    );
  }
}
