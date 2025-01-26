import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:resturantes/core/widget/dynamic_start_gold.dart';
import '../../../constantes.dart';
Future<dynamic> addReviewModelBottomSheet(BuildContext context) {
  return showModalBottomSheet(
      isDismissible: true,
      showDragHandle: true,
      useRootNavigator: false,
      context: context,
      builder: (context) {
        return SizedBox(
          width: MediaQuery.sizeOf(context).width,
          height: MediaQuery.sizeOf(context).height * 0.30,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                  ],
                ),
                const Center(
                  child: SizedBox(
                    height: 45,
                    child: DynamicStartGold()),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0,bottom: 8.0),
                  child: TextFormField(
                    maxLines: 5,
                    decoration: const InputDecoration(
                        hintText: 'Write a review...',
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        suffixIcon: Icon(Icons.send)),
                  ),
                )
              ],
            ),
          ),
        );
      });
}
