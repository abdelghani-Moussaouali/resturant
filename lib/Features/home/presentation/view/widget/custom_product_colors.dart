import 'package:flutter/material.dart';

class CustomProductColors extends StatefulWidget {
  const CustomProductColors({
    super.key,
  });

  @override
  State<CustomProductColors> createState() => _CustomProductColorsState();
}

class _CustomProductColorsState extends State<CustomProductColors> {
  List<Color> colors = [
    Colors.red,
    Colors.yellow,
    Colors.green,
    Colors.pink,
  ];

  int selectIndex = 0;
  handelSelect(int index) {
    setState(() {
      selectIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Select color',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        const SizedBox(
          height: 12,
        ),
        SizedBox(
          height: 50,
          width: MediaQuery.sizeOf(context).width * .48,
          child: Align(
            alignment: Alignment.center,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: colors.length > 4 ? 4 : colors.length,
                itemBuilder: (context, index) {
                  return CustomSelectColor(
                    color: colors[index],
                    index: index,
                    isSelected: selectIndex == index,
                    ontap: (int value) {
                      handelSelect(value);
                    },
                  );
                }),
          ),
        )
      ],
    );
  }
}

class CustomSelectColor extends StatelessWidget {
  const CustomSelectColor({
    super.key,
    this.color,
    required this.index,
    required this.ontap,
    required this.isSelected,
  });
  final ValueChanged<int> ontap;
  final Color? color;
  final int index;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        ontap(index);
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 8.0),
        child: isSelected == true
            ? CircleAvatar(
                backgroundColor: color,
                child: const Icon(
                  Icons.check,
                  color: Colors.white,
                ))
            : CircleAvatar(
                backgroundColor: color,
              ),
      ),
    );
  }
}
