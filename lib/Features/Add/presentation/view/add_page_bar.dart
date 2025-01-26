import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:resturantes/Features/user/presentation/view/user_bar.dart';
import 'package:resturantes/constantes.dart';
import 'package:resturantes/core/utils/functions/add_post_watched_viewrs.dart';
import 'package:resturantes/core/utils/functions/add_review_model_bottom_sheet.dart';

class AddPageBar extends StatelessWidget {
  const AddPageBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Icon(
              FontAwesomeIcons.xmark,
            ),
            const UserProfile(
              image: kImageMe,
              size: 40,
            ),
            const SizedBox(width: 10),
            GestureDetector(
              onTap: (){
                addPostWatchedViewers(context);
            },
              child: const Row(
                children: [
                  Text(
                    'for all',
                    style: TextStyle(
                        color: kgreyColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                  Icon(
                    Icons.arrow_drop_down_rounded,
                    color: kgreyColor,
                    size: 40,
                  )
                ],
              ),
            )
          ],
        ),
        Expanded(
          child: TextFormField(
            onChanged: (value) {},
            keyboardType: TextInputType.text,
            maxLines: 200,
            autofocus: true,
            style: const TextStyle(fontSize: 18),
            decoration: const InputDecoration(
              hintText: 'share your ideas...',
              hintStyle: TextStyle(fontSize: 18),
              filled: true,
            ),
          ),
        ),
      ],
    );
  }
}
