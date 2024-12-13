import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class UserBar extends StatefulWidget {
  const UserBar({
    super.key,
  });

  @override
  State<UserBar> createState() => _NotificationBarState();
}

class _NotificationBarState extends State<UserBar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 8.0),
      child: CustomScrollView(
        physics: const NeverScrollableScrollPhysics(),
        slivers: [
          const SliverToBoxAdapter(
              child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          UserProfile(
                            image: 'assets/images/user.jpg',
                            size: 110,
                          ),
                          SizedBox(
                            width: 18,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Abdelghani moussouali',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Color.fromARGB(255, 18, 54, 174),
                                ),
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Text(
                                'flutter devlopper',
                                style: TextStyle(
                                  color: Colors.blueGrey,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      CustomTitleIcon(
                        icon: FontAwesomeIcons.circleUser,
                        title: '',
                        color: null,
                      )
                    ],
                  ))),
          SliverFillRemaining(
            child: Column(
              children: [
                CustomUserProfileCard(
                  icon: FontAwesomeIcons.circleUser,
                  title: 'account management',
                  onTap: () {},
                ),
                CustomUserProfileCard(
                  icon: FontAwesomeIcons.heart,
                  title: 'favorite page',
                  onTap: () {},
                ),
                CustomUserProfileCard(
                  icon: FontAwesomeIcons.gear,
                  title: 'settings',
                  onTap: () {},
                ),
                CustomUserProfileCard(
                  icon: FontAwesomeIcons.circleQuestion,
                  title: 'contact us',
                  onTap: () {},
                ),
                CustomUserProfileCard(
                  icon: FontAwesomeIcons.powerOff,
                  title: 'log out',
                  onTap: () {},
                  color: const Color.fromARGB(255, 206, 22, 9),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class UserProfile extends StatelessWidget {
  const UserProfile({
    super.key,
    required this.image,
    this.size = 90,
  });
  final String image;
  final double size;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      width: size,
      height: size,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(75),
          image: DecorationImage(
              image: AssetImage(
                image,
              ),
              fit: BoxFit.cover)),
    );
  }
}

class CustomUserProfileCard extends StatelessWidget {
  const CustomUserProfileCard({
    super.key,
    required this.icon,
    required this.title,
    required this.onTap,
    this.color = Colors.black,
  });
  final Color? color;
  final IconData icon;
  final String title;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 217, 230, 252),
              borderRadius: BorderRadius.circular(12)),
          margin: const EdgeInsets.symmetric(
            vertical: 2.0,
          ),
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
          width: MediaQuery.sizeOf(context).width,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: CustomTitleIcon(icon: icon, color: color, title: title),
          )),
    );
  }
}

class CustomTitleIcon extends StatelessWidget {
  const CustomTitleIcon({
    super.key,
    required this.icon,
    required this.color,
    required this.title,
  });

  final IconData icon;
  final Color? color;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 8.0),
          width: 55,
          height: 55,
          child: Icon(icon, color: color),
        ),
        SizedBox(
          height: 50,
          child: Center(
            child: Text(
              title,
              maxLines: 3,
              style: TextStyle(fontSize: 18, color: color),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        )
      ],
    );
  }
}
