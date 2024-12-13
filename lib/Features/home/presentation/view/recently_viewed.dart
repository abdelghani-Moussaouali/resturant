

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:resturantes/constantes.dart';
import 'package:resturantes/core/utils/app_route.dart';
import 'package:resturantes/core/widget/custom_like_button.dart';

class RecentlyViwed extends StatelessWidget {
  const RecentlyViwed({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemCount: 6,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: InkWell(
            onTap: () {
              GoRouter.of(context).push(AppRoute.kCustomItemCard);
            },
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: kFeedbackColor,
                    image: const DecorationImage(
                        image: AssetImage(kImageIphone14)),
                  ),
                ),
                const CustomLikeButton(
                  size: 28,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
