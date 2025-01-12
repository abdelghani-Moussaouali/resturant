import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:resturantes/Features/home/presentation/view/drop_dowm_title.dart';
import 'package:resturantes/Features/home/presentation/view/widget/custom_drop_down_title.dart';
import 'package:resturantes/core/utils/app_styles.dart';

import '../../../constantes.dart';

List<String> itemBrand = [
  'iphone',
  'realme',
  'redme',
];
List<String> itemPrice = [
  '\$1500 - \$2000}',
  '\$1000 - \$1500}',
  '\$500 - \$1000}',
];
List<String> itemSize = [
  '5.5 to 6.0 inches',
  '5.0 to 5.5 inches',
  '4.5 to 5.0 inches',
  '4.0 to 4.5 inches',
];
Future<dynamic> showModalBottom(BuildContext context) {
  return showModalBottomSheet(
      isDismissible: true,
      showDragHandle: true,
      useRootNavigator: false,
      context: context,
      builder: (context) {
        return SizedBox(
          width: MediaQuery.sizeOf(context).width,
          height: MediaQuery.sizeOf(context).height * 0.45,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const CircleAvatar(
                            radius: 17,
                            backgroundColor: kPrmiaryColor,
                            child: Icon(
                              FontAwesomeIcons.xmark,
                              color: Colors.white,
                              size: 18,
                            ))),
                    Text(
                      'Filter Options',
                      style: AppStyles.titlestyle24(),
                    ),
                    Container(
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: kSecondaryColor,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Center(
                          child: Text(
                            'Done ',
                            style: AppStyles.titlestyle24()
                                .copyWith(color: Colors.white),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                const DropDownTitle(
                  title: 'Brand',
                ),
                CustomDropDownItem(
                  items: itemBrand,
                ),
                const DropDownTitle(
                  title: 'Price',
                ),
                CustomDropDownItem(
                  items: itemPrice,
                ),
                const DropDownTitle(
                  title: 'size',
                ),
                CustomDropDownItem(
                  items: itemSize,
                ),
              ],
            ),
          ),
        );
      });
}
