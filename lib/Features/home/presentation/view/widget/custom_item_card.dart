
import 'package:flutter/material.dart';
import 'package:resturantes/Features/home/presentation/view/widget/custom_product_detail_body.dart';

class CustomProductDeatil extends StatelessWidget {
  const CustomProductDeatil({super.key});

  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: Scaffold(
        body: CustomProductDeatilBody(),
      ),
    );
  }
}
