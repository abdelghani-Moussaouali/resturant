import 'package:flutter/material.dart';
import 'package:resturantes/constantes.dart';
import 'package:resturantes/core/utils/app_styles.dart';

class WorkTeamTabBarView extends StatelessWidget {
  const WorkTeamTabBarView({
    super.key,
    // required this.itemcategory,
  });

  // final Itemcategory itemcategory;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(0),
      itemCount: 5,
      itemBuilder: (context, index) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: SizedBox(
              height: 90,
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(18),
                    child: Image.asset(
                      kImageMe,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(
                    width: 25,
                  ),
                   Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        'abdleghani moussaouali', // itemcategory.menus[index].menu,
                        style: AppStyles.titleWhiteBoldStyle18()
                      ),
                      Text(
                        "chef d'equipe",
                        style: AppStyles.subTitleWhiteStyle16(),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
