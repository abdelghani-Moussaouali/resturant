
import 'package:flutter/material.dart';
import 'package:resturantes/core/utils/app_styles.dart';

class DropDownTitle extends StatelessWidget {
  const DropDownTitle({
    super.key,
    required this.title,
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 3.0),
      child: Text(
        title,
        style: AppStyles.titlestyle24(),
      ),
    );
  }
}
