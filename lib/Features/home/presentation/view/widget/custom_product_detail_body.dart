import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:resturantes/Features/home/presentation/view/widget/custom_down_product_detail.dart';
import 'package:resturantes/Features/home/presentation/view/widget/custom_up_product_detail.dart';
import 'package:resturantes/Features/store/data/repos/item/item_category.dart';

class CustomProductDeatilBody extends StatelessWidget {
  const CustomProductDeatilBody({super.key, required this.itemcategory});
final Itemcategory itemcategory;
  @override
  Widget build(BuildContext context) {
    return  Stack(
      children: [
         CustomDownProductDetail(itemcategory: itemcategory,),
        CustomUpProductDetail(image: itemcategory.image![0].image,),
      ],
    );
  }
}
