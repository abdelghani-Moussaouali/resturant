import 'package:flutter/material.dart';
import 'package:resturantes/constantes.dart';

class CustomSelectCategory extends StatelessWidget {
  const CustomSelectCategory({
    super.key,
    required this.icon,
    required this.name,
    required this.index,
    required this.ontap,
    required this.isSelected,
  });
  final IconData icon;
  final int index;
  final String name;
  final bool isSelected;
  final ValueChanged<int> ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        ontap(index);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 06),
        child: Container(
          height: 90,
          width: 90,
          decoration: BoxDecoration(
              color: !isSelected ? kFeedbackColor : kSecondaryColor,
              borderRadius: BorderRadius.circular(25)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                icon,
                color: isSelected ? Colors.white : Colors.black,
                size: 25,
              ),
              Text(
                name,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: isSelected ? Colors.white : Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
