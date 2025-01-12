import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:resturantes/core/widget/navigation_bar_item.dart';

class BottomNavigationbar extends StatefulWidget {
  const BottomNavigationbar({super.key, required this.selectedItem});

  final ValueChanged<int> selectedItem;

  @override
  State<BottomNavigationbar> createState() => _BottomNavigationbarState();
}

class _BottomNavigationbarState extends State<BottomNavigationbar> {
  var selecteIndex = 0;
  void handelItemSelected(int index) {
    setState(() {
      selecteIndex = index;
    });
    widget.selectedItem(index);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(12),
          boxShadow: const [
            BoxShadow(
              blurRadius: 8,
              offset: Offset(0, 2),
            ),
          ]),
      padding: const EdgeInsets.symmetric(vertical: 20),
      margin: const EdgeInsets.all(13),
      child: SafeArea(
        child: Row(
          verticalDirection: VerticalDirection.up,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            NavigationBarItem(
              icon: CupertinoIcons.home,
              isSelected: (selecteIndex == 0),
              index: 0,
              ontap: (int index) => handelItemSelected(index),
            ),
            NavigationBarItem(
              icon: FontAwesomeIcons.store,
              isSelected: (selecteIndex == 1),
              index: 1,
              ontap: (index) => handelItemSelected(index),
            ),
            NavigationBarItem(
              icon: FontAwesomeIcons.circlePlus,
              isSelected: (selecteIndex == 2),
              index: 2,
              ontap: (int index) => handelItemSelected(index),
            ),
            NavigationBarItem(
              icon: (selecteIndex == 3)
                  ? FontAwesomeIcons.solidHeart
                  : FontAwesomeIcons.heart,
              isSelected: (selecteIndex == 3),
              index: 3,
              ontap: (int index) => handelItemSelected(index),
            ),
            NavigationBarItem(
              icon: (selecteIndex == 4)
                  ? FontAwesomeIcons.user
                  : FontAwesomeIcons.user,
              isSelected: (selecteIndex == 4),
              index: 4,
              ontap: (int index) => handelItemSelected(index),
            ),
          ],
        ),
      ),
    );
  }
}
