

import 'package:go_router/go_router.dart';
import 'package:resturantes/Features/home/presentation/view/widget/custom_item_card.dart';
import 'package:resturantes/home_page.dart';

class AppRoute {
  static String kCustomItemCard = '/customItemCard';
  static String kHomeBar = '/HomeBar';
  static String kNotificationBar = '/NotificationBar';
  static String kQrScanBar = '/kQrScanBar';
  static String kFavouriteBar = '/FavouriteBar';
  AppRoute();
  static GoRouter goRoute = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => HomePage(),
      ),
      GoRoute(
        path: '/HomePage',
        builder: (context, state) => HomePage(),
      ),
      GoRoute(
        path: kCustomItemCard,

        builder: (context, state) => const CustomProductDeatil(),
      ),
      
     
    ],
  );
}
