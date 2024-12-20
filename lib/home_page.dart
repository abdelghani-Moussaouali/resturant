import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:resturantes/Features/SacnBar/presentation/view/qr_code_bar.dart';
import 'package:resturantes/Features/auth/presentation/manager/cubit/login_cubit.dart';
import 'package:resturantes/Features/favourite/presentation/view/favourite_bar.dart';
import 'package:resturantes/Features/home/presentation/view/home_bar.dart';
import 'package:resturantes/Features/search/presentation/views/notification_bar.dart';
import 'package:resturantes/Features/user/presentation/view/user_bar.dart';
import 'package:resturantes/core/widget/bottom_navigation_bar.dart';

class HomePage extends StatefulWidget {
  static String id = 'HomePage';
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Widget> pageWidget = const [
    HomeBar(),
    NotificationBar(),
    QrScanBar(),
    FavouriteBar(),
    UserBar(),
  ];

  final ValueNotifier<int> pageIndex = ValueNotifier(0);

  final ValueNotifier<Widget> valueWidget = ValueNotifier(const HomeBar());

  void _onItemNavigationSelected(index) {
    pageIndex.value = index;
    valueWidget.value = pageWidget[index];
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            elevation: 0.0,
            toolbarHeight: 22,
          ),
          bottomNavigationBar: BottomNavigationbar(
            selectedItem: _onItemNavigationSelected,
          ),
          body: ValueListenableBuilder(
            valueListenable: valueWidget,
            builder: (BuildContext context, dynamic value, Widget? child) {
              return Center(child: valueWidget.value);
            },
          )),
    );
  }
}
