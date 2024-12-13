
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:resturantes/Features/home/presentation/view/widget/custom_select_category.dart';

class CustomListSelectCategory extends StatefulWidget {
  const CustomListSelectCategory({
    super.key,
  });

  @override
  State<CustomListSelectCategory> createState() =>
      _CustomListSelectCategoryState();
}

class _CustomListSelectCategoryState extends State<CustomListSelectCategory> {
  List<dynamic> items = [
    {
      'title': 'phone',
      'icon': FontAwesomeIcons.mobileScreen,
    },
    {
      'title': 'laptop',
      'icon': FontAwesomeIcons.laptop,
    },
    {
      'title': 'TV',
      'icon': FontAwesomeIcons.tv,
    },
    {
      'title': 'headphone',
      'icon': FontAwesomeIcons.headphones,
    },
  ];

  int selectIndex = 0;
  handelSelect(int index) {
    setState(() {
      selectIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: items.length,
          itemBuilder: (context, index) {
            return CustomSelectCategory(
              icon: items[index]['icon'],
              name: items[index]['title'],
              index: index, //3

              ontap: (int value) {
         
                handelSelect(value);
         
              },
              isSelected: selectIndex == index,
            );
          }),
    );
  }
}
