import 'package:flower_guide/core/constants/imports.dart';
import 'package:flower_guide/view/screens/account_page.dart';
import 'package:flower_guide/view/screens/sign_in_page.dart';
import 'package:flower_guide/view/screens/sign_up_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
   HomePage({Key? key}) : super(key: key);

  late BottomBarProvider _bottomBarProvider;
  @override
  Widget build(BuildContext context) {
    _bottomBarProvider = context.watch<BottomBarProvider>();
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: _bodyList[_bottomBarProvider.index],
      bottomNavigationBar: const MyBottomBar(),
    );
  }

  final List<Widget> _bodyList =[
    const HomePageBody(),
    const HomePageBody(),
    const FavouritesPage(),
    const AccountPage(),
  ];
}
