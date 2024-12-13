
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class CustomDropDownItem extends StatelessWidget {
  const CustomDropDownItem({
    super.key,
    required this.items,
  });
  final List<String> items;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        width: MediaQuery.sizeOf(context).width,
        decoration: BoxDecoration(
          border: Border.all(width: 1.5, color: Colors.grey[400]!),
          borderRadius: BorderRadius.circular(8),
        ),
        child: DropdownButton(
          alignment: Alignment.bottomRight,
          menuWidth: MediaQuery.sizeOf(context).width * .9,
          borderRadius: BorderRadius.circular(10),
          icon: const Icon(FontAwesomeIcons.caretDown),
          padding: const EdgeInsets.symmetric(horizontal: 20),
          value: items[0],
          isExpanded: true,
          style: TextStyle(color: Colors.grey[800], fontSize: 20),
          items: [
            DropdownMenuItem<String>(value: items[0], child: Text(items[0])),
            DropdownMenuItem<String>(value: items[1], child: Text(items[1])),
            DropdownMenuItem<String>(value: items[2], child: Text(items[2])),
          ],
          onChanged: (value) {},
        ),
      ),
    );
  }
}
