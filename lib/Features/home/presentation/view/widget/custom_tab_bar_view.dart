import 'package:flutter/material.dart';
import 'package:resturantes/Features/home/presentation/view/widget/reviews_tab_bar_view.dart';
import 'package:resturantes/Features/home/presentation/view/widget/features_tab_bar_view.dart';
import 'package:resturantes/Features/home/presentation/view/widget/menu_tab_bar_view.dart';
import 'package:resturantes/Features/store/data/repos/item/item_category.dart';

class CustomTabBarView extends StatelessWidget {
  const CustomTabBarView({
    super.key,
    required this.itemcategory,
  });
  final Itemcategory itemcategory;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * .38,
      child: TabBarView(children: [
        MenuTabBarView(
          itemcategory: itemcategory,
        ),
        ReviewsTabBarView(
          itemcategory: itemcategory,
        ),
        const FeaturesTabBarView(),
      ]),
    );
  }
}
