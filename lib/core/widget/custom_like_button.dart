import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomLikeButton extends StatefulWidget {
  const CustomLikeButton({
    super.key,
    this.size = 25,
    this.padding = const EdgeInsets.all(8.0),
    this.backgroundColor = Colors.transparent,
    this.boxShadowColor = Colors.transparent,
    this.alignment = Alignment.topRight,
  });
  final Alignment alignment;
  final double size;
  final Color boxShadowColor;
  final Color? backgroundColor;
  final EdgeInsetsGeometry padding;
  @override
  State<CustomLikeButton> createState() => _CustomLikeButtonState();
}

class _CustomLikeButtonState extends State<CustomLikeButton> {
  bool isLiked = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: widget.alignment,
      margin: widget.padding,
      decoration: BoxDecoration(
          color: widget.backgroundColor,
          borderRadius: BorderRadius.circular(75),
          boxShadow: [
            BoxShadow(
              color: widget.boxShadowColor,
              blurRadius: 8,
              spreadRadius: 0.2,
            )
          ]),
      child: IconButton(
        onPressed: () {
          setState(() {
            isLiked = !isLiked;
          });
        },
        icon: !isLiked
            ? Icon(
                CupertinoIcons.heart,
                size: widget.size,
              )
            : Icon(
                CupertinoIcons.heart_fill,
                color: Colors.red,
                size: widget.size,
              ),
      ),
    );
  }
}
