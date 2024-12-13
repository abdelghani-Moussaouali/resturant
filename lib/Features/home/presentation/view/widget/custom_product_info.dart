import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:resturantes/core/widget/custom_like_button.dart';

class CustomProductInfo extends StatelessWidget {
  const CustomProductInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'IPhone 13',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
              SizedBox(
                height: 08.0,
              ),
              SizedBox(
                width: 120,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      CupertinoIcons.star_fill,
                      color: Colors.orangeAccent,
                      size: 18,
                    ),
                    Icon(
                      CupertinoIcons.star_fill,
                      color: Colors.orangeAccent,
                      size: 18,
                    ),
                    Icon(
                      CupertinoIcons.star_fill,
                      color: Colors.orangeAccent,
                      size: 18,
                    ),
                    Icon(
                      CupertinoIcons.star_fill,
                      color: Colors.orangeAccent,
                      size: 18,
                    ),
                    Icon(
                      CupertinoIcons.star_fill,
                      color: Colors.orangeAccent,
                      size: 18,
                    )
                  ],
                ),
              )
            ],
          ),
        CustomLikeButton(
          backgroundColor: Colors.white,
        )
        ],
      ),
    );
  }
}
