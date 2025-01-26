import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:resturantes/Features/Add/presentation/view/add_page_bar.dart';
import 'package:resturantes/Features/SacnBar/presentation/view/qr_code_bar.dart';
import 'package:resturantes/Features/auth/presentation/manager/cubit/Login/login_cubit.dart';
import 'package:resturantes/Features/favourite/presentation/view/favourite_bar.dart';
import 'package:resturantes/Features/store/presentation/view/store_page_bar.dart';
import 'package:resturantes/Features/search/presentation/views/home_page_bar.dart';
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
  final List<Widget> pageWidget = [
    const HomePageBar(),
    const StorePageBar(),
    const AddPageBar(),
    const FavouriteBar(),
    const UserBar(),
  ];

  final ValueNotifier<int> pageIndex = ValueNotifier(0);

  final ValueNotifier<Widget> valueWidget = ValueNotifier(const HomePageBar());

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

