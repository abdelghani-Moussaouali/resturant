import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:resturantes/Features/home/presentation/view/widget/custom_item_card.dart';
import 'package:resturantes/Features/store/data/repos/item/item.dart';

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
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: AspectRatio(
                    aspectRatio: 4 / 4,
                    child: CachedNetworkImage(
                      imageUrl: item[0].items![index].image![0].image,
                      fit: BoxFit.fill,
                    
                      errorWidget: (context, url, error) {
                        return const Icon(Icons.error);
                      },
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
