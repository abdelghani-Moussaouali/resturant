import 'package:flutter/material.dart';
import 'package:resturantes/constantes.dart';

class DynamicStartGold extends StatefulWidget {
  const DynamicStartGold({
    super.key,
  });

  @override
  State<DynamicStartGold> createState() => _DynamicStartGoldState();
}

class _DynamicStartGoldState extends State<DynamicStartGold> {
  int itemCount = -1;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (contect, index) {
          return GestureDetector(
            child: IconButton(
              icon: index <= itemCount
                  ? const Icon(
                      size: 35,
                      Icons.star_rounded,
                      color: kGoldColor,
                    )
                  : Icon(
                      size: 35,
                      Icons.star_rounded,
                      color:  Colors.grey[300],
                    ),
              onPressed: () {
                print(index + 1);
                itemCount = index;
                setState(() {});
              },
            ),
          );
        });
  }
}
