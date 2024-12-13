import 'package:flutter/material.dart';
import 'package:resturantes/Features/home/presentation/view/widget/custom_capacity_card.dart';

class CustomProductCapacity extends StatefulWidget {
  const CustomProductCapacity({
    super.key,
  });

  @override
  State<CustomProductCapacity> createState() => _CustomProductCapacityState();
}

class _CustomProductCapacityState extends State<CustomProductCapacity> {
  int selectedindex = 0;
  List<String> capacity = [
    '128 GB',
    '256 GB',
  ];
  handelSelect(int index) {
    setState(() {
      selectedindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Capcity',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        const SizedBox(
          height: 12,
        ),
        SizedBox(
          width: MediaQuery.sizeOf(context).width * 0.36,
          height: 40,
          child: ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: 2,
            itemBuilder: (context, index) {
              return CustomCapacityCard(
                title: capacity[index],
                isSelected: selectedindex == index,
                index: index,
                ontap: (int value) {
                  handelSelect(value);
                },
              );
            },
          ),
        )
      ],
    );
  }
}
