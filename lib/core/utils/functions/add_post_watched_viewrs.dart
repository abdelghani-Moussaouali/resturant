import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:resturantes/core/widget/dynamic_start_gold.dart';
import '../../../constantes.dart';

Future<dynamic> addPostWatchedViewers(BuildContext context) {
  int value = 0;
  bool isSelected = false;
  return showModalBottomSheet(
      isDismissible: true,
      showDragHandle: true,
      useRootNavigator: false,
      context: context,
      builder: (context) {
        return SizedBox(
            width: MediaQuery.sizeOf(context).width,
            height: MediaQuery.sizeOf(context).height * 0.30,
            child: Column(
              children: [
                const Text('who can watch this post'),
                Container(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      const CircleAvatar(
                        backgroundColor: Colors.white60,
                        child: Icon(
                          FontAwesomeIcons.earthAmericas,
                        ),
                      ),
                      const Text('for all people '),
                      Radio(
                        value: isSelected == true ? 1 : 0,
                        groupValue: 1,
                        onChanged: (value) {
                          isSelected = !isSelected;
                        },
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 16.0),
              ],
            ));
      });
}
