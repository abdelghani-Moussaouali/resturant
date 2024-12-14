

import 'package:go_router/go_router.dart';
import 'package:resturantes/Features/home/presentation/view/widget/custom_item_card.dart';
import 'package:resturantes/auth/log_in_page.dart';
import 'package:resturantes/auth/sign_in_page.dart';
import 'package:resturantes/home_page.dart';
import 'package:resturantes/first_page.dart';

class AppRoute {
  static String kCustomItemCard = '/customItemCard';
  static String kHomePage = '/HomePage';
  static String kNotificationBar = '/NotificationBar';
  static String kQrScanBar = '/kQrScanBar';
  static String kFavouriteBar = '/FavouriteBar';
  static String kLogInPage = '/LogInPage';
  static String kSignInPage = '/SignInPage';
  AppRoute();
  static GoRouter goRoute = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) =>  LogInPage(),  // FirstPage
      ),
      // GoRoute(
      //   path: kLogInPage,
      //   builder: (context, state) =>  LogInPage(),
      // ),
      GoRoute(
        path: kSignInPage,
        builder: (context, state) => const SignInPage(),
      ),
      GoRoute(
        path: kHomePage,
        builder: (context, state) => HomePage(),
      ),
      GoRoute(
        path: kCustomItemCard,

        builder: (context, state) => const CustomProductDeatil(),
      ),
      
     
    ],
  );
}
