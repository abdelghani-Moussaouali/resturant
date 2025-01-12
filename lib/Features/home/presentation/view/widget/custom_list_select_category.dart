import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:resturantes/Features/home/presentation/view/widget/custom_select_category.dart';
import 'package:resturantes/Features/store/presentation/manager/store_cubit/store_cubit.dart';

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
      'title': 'pizza',
      'icon': FontAwesomeIcons.pizzaSlice,
    },
    {
      'title': 'resturant',
      'icon': FontAwesomeIcons.utensils,
    },
    {
      'title': 'desserts',
      'icon': FontAwesomeIcons.iceCream,
    },
    {
      'title': 'cafeteria',
      'icon': FontAwesomeIcons.mugSaucer,
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
              index: index,
              ontap: (int value) {
                handelSelect(value);
                BlocProvider.of<StoreCubit>(context)
                    .fetchCategoryItem(category: items[index]['title']);
              },
              isSelected: selectIndex == index,
            );
          }),
    );
  }
}
