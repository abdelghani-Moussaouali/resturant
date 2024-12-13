

import 'package:flutter/material.dart';
import 'package:resturantes/core/utils/app_styles.dart';

class CustomTitle extends StatelessWidget {
  const CustomTitle({
    super.key,
    required this.title,
    required this.subtitle,
  });
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: AppStyles.titlestyle24(),
        ),
        Text(
          subtitle,
          style: TextStyle(color: Colors.grey[600]),
        ),
      ],
    );
  }

 
}
