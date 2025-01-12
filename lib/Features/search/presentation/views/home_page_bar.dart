import 'package:flutter/material.dart';
import 'package:resturantes/Features/user/presentation/view/user_bar.dart';
import 'package:resturantes/constantes.dart';

class HomePageBar extends StatelessWidget {
  const HomePageBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 0,
      ),
      child: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                    padding: EdgeInsets.only(left: 16.0, bottom: 8.0),
                    child: Text(
                      'Alger Tour',
                      style: TextStyle(
                          fontSize: 28,
                          color: kPrmiaryColor,
                          fontWeight: FontWeight.bold),
                    )),
                CustomDivider(),
              ],
            ),
          ),
          SliverFillRemaining(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return const CustomSinglePost(
                  userimage: kImageMe,
                  userName: 'Abdelghani Moussaouali',
                  postText:
                      'the tour is the tour wrjirr jioj rioj iooij oij4rjio oir iorjiorrjojriorj irj iorj jiorjior jioj iro jiorjio jrioi rjop jioo',
                  postImage: kImageresturant,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class CustomSinglePost extends StatelessWidget {
  const CustomSinglePost({
    super.key,
    required this.userimage,
    required this.userName,
    required this.postText,
    required this.postImage,
  });

  final String userimage;
  final String userName;
  final String postText;
  final String postImage;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: MediaQuery.sizeOf(context).width,
          child: Padding(
            padding:
                const EdgeInsets.only(left: 8, right: 8, bottom: 6, top: 6),
            child: Column(
              children: [
                Row(
                  children: [
                    UserProfile(
                      image: userimage,
                      size: 50,
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          userName,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        const Text('10h'),
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 12,
                ),
                Text(
                  postText,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
        ),
        Container(
          height: 250.0,
          width: MediaQuery.sizeOf(context).width,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(postImage),
              fit: BoxFit.cover,
            ),
          ),
        ),
        const CustomDivider(),
      ],
    );
  }
}

class CustomDivider extends StatelessWidget {
  const CustomDivider({
    super.key,
    this.thickness = 6,
  });
  final double thickness;
  @override
  Widget build(BuildContext context) {
    return  Divider(
      thickness: thickness,
    );
  }
}
