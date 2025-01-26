import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomUpProductDetail extends StatelessWidget {
  const CustomUpProductDetail({
    super.key,
    required this.image,
  });
  final String image;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.45,
      width: MediaQuery.sizeOf(context).width,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(18),
        child: CachedNetworkImage(
          imageUrl: image,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
