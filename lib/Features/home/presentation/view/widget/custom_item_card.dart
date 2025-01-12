import 'package:flutter/material.dart';
import 'package:resturantes/Features/home/presentation/view/widget/custom_product_detail_body.dart';
import 'package:resturantes/Features/store/data/repos/item/item_category.dart';

class CustomProductDeatil extends StatelessWidget {
  const CustomProductDeatil({super.key, required this.item});
final Itemcategory item;
  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: Scaffold(
        body: CustomProductDeatilBody(itemcategory: item,),
      ),
    );
  }
}
