import 'package:flutter/material.dart';
import 'package:resturantes/Features/home/presentation/view/widget/custom_item_card.dart';
import 'package:resturantes/Features/store/data/repos/item/item.dart';
import 'package:resturantes/constantes.dart';
import 'package:resturantes/core/widget/custom_like_button.dart';

class RecentlyViwed extends StatelessWidget {
  const RecentlyViwed({
    super.key,
    required this.item,
  });

  final List<Item> item;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemCount: item[0].items?.length,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return CustomProductDeatil(
                  item: item[0].items![index],
                );
              }));
            },
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    color: kFeedbackColor,
                    image: DecorationImage(
                        image:
                            NetworkImage(item[0].items![index].image![0].image),
                        fit: BoxFit.cover),
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
