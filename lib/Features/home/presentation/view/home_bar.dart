
import 'package:flutter/material.dart';
import 'package:resturantes/Features/home/presentation/view/recently_viewed.dart';
import 'package:resturantes/Features/home/presentation/view/widget/custom_ad.dart';
import 'package:resturantes/Features/home/presentation/view/widget/custom_list_select_category.dart';
import 'package:resturantes/Features/home/presentation/view/widget/custom_title.dart';
import 'package:resturantes/constantes.dart';
import 'package:resturantes/core/widget/custom_text_form_field.dart';

class HomeBar extends StatelessWidget {
  const HomeBar({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 12),
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: CustomTextFormField(),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                SizedBox(
                  height: 22,
                ),
                CustomTitle(
                  title: 'Hot Sales',
                  subtitle: 'see more',
                ),
                CustomAd(
                  image: kImageIphone14,
                ),
                SizedBox(
                  height: 16,
                ),
                CustomTitle(title: 'Select Category', subtitle: 'view all'),
                SizedBox(
                  height: 16,
                ),
                CustomListSelectCategory(),
                SizedBox(
                  height: 22,
                ),
                CustomTitle(title: 'Recently Viewd', subtitle: 'see more'),
                SizedBox(
                  height: 16,
                ),
              ],
            ),
          ),
          SliverFillRemaining(
            child: RecentlyViwed(),
          ),
        ],
      ),
    );
  }
}
