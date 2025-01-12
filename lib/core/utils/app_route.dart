import 'package:go_router/go_router.dart';
import 'package:resturantes/Features/auth/home_page_builder.dart';
import 'package:resturantes/Features/auth/sign_up_page_builder.dart';
import 'package:resturantes/Features/auth/sign_up_second_page.dart';
import 'package:resturantes/Features/home/presentation/view/widget/custom_item_card.dart';
import 'package:resturantes/Features/auth/log_in_page.dart';
import 'package:resturantes/Features/auth/sign_up_page.dart';
import 'package:resturantes/home_page.dart';

class AppRoute {
  static String kCustomItemCard = '/customItemCard';
  static String kHomePage = '/HomePage';
  static String kHomePagePrin = '/kHomePagePrin';
  static String kNotificationBar = '/NotificationBar';
  static String kQrScanBar = '/kQrScanBar';
  static String kFavouriteBar = '/FavouriteBar';
  static String kLogInPage = '/LogInPage';
  static String kSignUpSecondPage = '/SignUpSecondPage';
  static String kSignUpPageBuilder = '/SignUpPageBuilder';

  static String kSignUpPage = '/SignInPage';
  AppRoute();
  static GoRouter goRoute = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const LogInPage(), // FirstPage
      ),
      GoRoute(
        path: kSignUpPage,
        builder: (context, state) => const SignUpPage(),
      ),
      // GoRoute(
      //   path: kSignUpSecondPage,
      //   builder: (context, state) => const SignUpSecondPage(),
      // ),
      GoRoute(
        path: kHomePage,
        builder: (context, state) => HomePage(),
      ),
      GoRoute(
        path: kHomePagePrin,
        builder: (context, state) => const HomePageBuilder(),
      ),
      GoRoute(
        path: kSignUpPageBuilder,
        builder: (context, state) => const SignUpPageBuilder(),
      ),
      // GoRoute(
      //   path: kCustomItemCard,
      //   builder: (context, state) => const CustomProductDeatil(),
      // ),
    ],
  );
}
