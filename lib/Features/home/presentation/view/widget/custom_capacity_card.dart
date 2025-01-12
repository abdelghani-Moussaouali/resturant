import 'package:flutter/material.dart';
import 'package:resturantes/constantes.dart';

class CustomCapacityCard extends StatelessWidget {
  const CustomCapacityCard({
    super.key,
    required this.title,
    required this.isSelected,
    required this.index,
    required this.ontap,
  });
  final String title;
  final bool isSelected;
  final int index;
  final ValueChanged<int> ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        ontap(index);
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: isSelected ? kSecondaryColor : Colors.transparent,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Text(
              title,
              style: const TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
