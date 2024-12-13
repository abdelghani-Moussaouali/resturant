import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:resturantes/Features/home/presentation/view/widget/custom_down_product_detail.dart';
import 'package:resturantes/Features/home/presentation/view/widget/custom_up_product_detail.dart';

class CustomProductDeatilBody extends StatefulWidget {
  const CustomProductDeatilBody({super.key});

  @override
  State<CustomProductDeatilBody> createState() => _CustomProductDeatilBodyState();
}

class _CustomProductDeatilBodyState extends State<CustomProductDeatilBody> {
  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        CustomDownProductDetail(),
        CustomUpProductDetail(),
      ],
    );
  }
}
