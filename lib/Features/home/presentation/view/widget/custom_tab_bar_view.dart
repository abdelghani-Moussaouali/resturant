import 'package:flutter/material.dart';
import 'package:resturantes/Features/home/presentation/view/widget/details_tab_bar_view.dart';
import 'package:resturantes/Features/home/presentation/view/widget/features_tab_bar_view.dart';
import 'package:resturantes/Features/home/presentation/view/widget/shop_tab_bar_view.dart';

class CustomTabBarView extends StatelessWidget {
  const CustomTabBarView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * .38,
      child: const TabBarView(children: [
        ShopTabBarView(),
        DetailsTabBarView(),
        FeaturesTabBarView(),
      ]),
    );
  }
}
