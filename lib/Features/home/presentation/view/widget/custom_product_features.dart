import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomProductFeatures extends StatelessWidget {
  const CustomProductFeatures({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            Icon(
              FontAwesomeIcons.microchip,
              color: Colors.white,
              size: 30,
            ),
            Text(
              '5 nm',
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
        Column(
          children: [
            Icon(
              FontAwesomeIcons.camera,
              color: Colors.white,
              size: 30,
            ),
            Text(
              '12 mp',
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
        Column(
          children: [
            Icon(
              FontAwesomeIcons.memory,
              color: Colors.white,
              size: 30,
            ),
            Text(
              '4 gb',
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
        Column(
          children: [
            Icon(
              FontAwesomeIcons.sdCard,
              color: Colors.white,
              size: 30,
            ),
            Text(
              '256 GB',
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
      ],
    );
  }
}
