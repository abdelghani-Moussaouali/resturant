

import 'package:flutter/material.dart';
import 'package:resturantes/constantes.dart';

class CustomTabBar extends StatelessWidget {
  const CustomTabBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const TabBar(
        dividerHeight: 0.0,
        indicatorSize: TabBarIndicatorSize.tab,
        indicatorPadding: EdgeInsets.only(left: 12, right: 12),
        labelPadding: EdgeInsets.only(bottom: 12, top: 20),
        indicatorColor: kSecondaryColor,
        labelStyle: TextStyle(color: Colors.white, fontSize: 20),
        unselectedLabelStyle: TextStyle(
            color: Color.fromARGB(255, 120, 110, 110),
            fontSize: 20),
        tabs: [
          Text('Shop'),
          Text('Details'),
          Text('Features'),
        ]);
  }
}
