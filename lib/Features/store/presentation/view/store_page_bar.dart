import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:resturantes/Features/home/presentation/view/recently_viewed.dart';
import 'package:resturantes/Features/home/presentation/view/widget/custom_ad.dart';
import 'package:resturantes/Features/home/presentation/view/widget/custom_list_select_category.dart';
import 'package:resturantes/Features/home/presentation/view/widget/custom_title.dart';
import 'package:resturantes/Features/store/presentation/manager/store_cubit/store_cubit.dart';
import 'package:resturantes/constantes.dart';
import 'package:resturantes/core/widget/custom_text_form_field.dart';

class StorePageBar extends StatelessWidget {
  const StorePageBar({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return const StorePageBarBody();
  }
}

class StorePageBarBody extends StatefulWidget {
  const StorePageBarBody({
    super.key,
  });

  @override
  State<StorePageBarBody> createState() => _StorePageBarBodyState();
}

class _StorePageBarBodyState extends State<StorePageBarBody> {
  @override
  void initState() {
    BlocProvider.of<StoreCubit>(context).fetchCategoryItem(category: 'pizza');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: CustomScrollView(
        slivers: [
          const SliverAppBar(
            title: CustomTextFormField(),
          ),
          const SliverToBoxAdapter(
            child: const Column(
              children: [
                SizedBox(
                  height: 22,
                ),
                CustomTitle(
                  title: 'Hot Sales',
                  subtitle: 'see more',
                ),
                CustomAd(
                  image: kImagePizza,
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
                  height: 18,
                ),
              ],
            ),
          ),
          SliverFillRemaining(child: BlocBuilder<StoreCubit, StoreState>(
            builder: (context, state) {
              if (state is StoreSucessState) {
                return RecentlyViwed(
                  item: state.data,
                );
              } else if (state is StrireFailureState) {
                return Center(
                    child: Text(state.errorMessage));
              } else {
                return const Center(child: CircularProgressIndicator());
              }
            },
          )),
        ],
      ),
    );
  }
}
