import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:resturantes/Features/search/presentation/views/home_page_bar.dart';
import 'package:resturantes/Features/store/data/repos/item/item_category.dart';
import 'package:resturantes/Features/user/presentation/view/user_bar.dart';
import 'package:resturantes/constantes.dart';
import 'package:resturantes/core/utils/functions/add_review_model_bottom_sheet.dart';
import 'package:resturantes/core/widget/custom_stars_gold.dart';
class ReviewsTabBarView extends StatelessWidget {
  final Itemcategory itemcategory;
  const ReviewsTabBarView({
    super.key,
    required this.itemcategory,
  });
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: ListView.builder(
            itemBuilder: (BuildContext context, int index) {
              return Column(
                children: [
                  SizedBox(
                    height: 70,
                    width: MediaQuery.sizeOf(context).width,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const UserProfile(
                          image: kImageMe,
                          size: 50,
                          blurRadius: 0.0,
                          spreadRadius: 0.0,
                        ),
                        const SizedBox(
                          width: 8.0,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'abdelghani moussaouali',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                            SizedBox(
                              width: MediaQuery.sizeOf(context).width - 98,
                              child: Row(
                                children: [
                                  const CustomStarsGold(
                                    itemCount: 5,
                                  ),
                                  const SizedBox(
                                    width: 8,
                                  ),
                                  const Text(
                                    '4.0',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                  const Spacer(),
                                  Text('1 days ago',
                                      style: TextStyle(
                                          color: Colors.grey[400],
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18))
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Text(
                    'The restaurant was amazing! The food was fresh and flavorful, the ambiance was cozy and inviting, and the staff was incredibly attentive. It’s the perfect spot for a relaxing evening or a special occasion. Highly recommend trying their [signature dish]',
                    style: TextStyle(color: Colors.grey[400], fontSize: 18),
                  ),
                  const CustomDivider(
                    thickness: 0.8,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                ],
              );
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: GestureDetector(
            onTap: (){
                addReviewModelBottomSheet(context);
            },
            child: Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.green[400],
                borderRadius: BorderRadius.circular(25),
              ),
              child: const Icon(CupertinoIcons.add,size: 25,),
            ),
          ),
        )
      ],
    );
  }
}
