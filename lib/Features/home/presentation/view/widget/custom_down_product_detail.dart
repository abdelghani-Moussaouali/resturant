import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:resturantes/Features/home/presentation/view/widget/custom_product_info.dart';
import 'package:resturantes/Features/home/presentation/view/widget/custom_tab_bar.dart';
import 'package:resturantes/Features/home/presentation/view/widget/custom_tab_bar_view.dart';
import 'package:resturantes/Features/store/data/repos/item/item_category.dart';
import 'package:resturantes/constantes.dart';

class CustomDownProductDetail extends StatelessWidget {
  const CustomDownProductDetail({
    super.key, required this.itemcategory,
  });

  final Itemcategory itemcategory;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height,
      width: MediaQuery.sizeOf(context).width,
      color: kPrmiaryColor,
      child:  Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 12.0,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CustomProductInfo(name: itemcategory.name,),
            CustomTabBar(),
            CustomTabBarView(itemcategory: itemcategory,),
          ],
        ),
      ),
    );
  }
}
