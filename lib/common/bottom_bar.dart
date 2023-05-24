import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

import '../constants/global_variables.dart';
import '../home/screen/home_screen.dart';

class BottomBar extends StatefulWidget {
  static const String routeName = '/actual-home';
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _page = 0;
  double bottomBarWidth = 94;
  double bottomBarBorderWidth = 5;

  List<Widget> pages = [
    // const HomeScreen(),
    const Center(
      child: Text('wishlist'),
    ),
    const Center(
      child: Text('wishlist'),
    ),
    const Center(
      child: Text('wishlist'),
    ),
  ];

  void updatePage(int page) {
    setState(() {
      _page = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    // final userCartLen = context.watch<UserProvider>().user.cart.length;

    return Scaffold(
      body: pages[_page],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _page,
        selectedItemColor: GlobalVariables.MegaTextColor,
        unselectedItemColor: GlobalVariables.unselectedNavBarColor,
        backgroundColor: GlobalVariables.backgroundColor,
        iconSize: 28,
        onTap: updatePage,
        items: [
          // HOME
          BottomNavigationBarItem(
            icon: Container(
              child: Column(
                children: [
                  Image.asset(
                    'assets/images/home1.png',
                    width: bottomBarWidth,
                    height: 60,
                    color: _page == 0
                        ? GlobalVariables.selectedNavBarColor
                        : GlobalVariables.unselectedNavBarColor,
                  ),
                  Text(
                    "HOME",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: _page == 0
                          ? GlobalVariables.selectedNavBarColor
                          : GlobalVariables.unselectedNavBarColor,
                      fontSize: 10,
                      fontFamily: "DMSans",
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            label: '',
          ),
          // ACCOUNT
          BottomNavigationBarItem(
            icon: Container(
              child: Column(
                children: [
                  Image.asset(
                    'assets/images/wishlist.png',
                    width: bottomBarWidth,
                    height: 60,
                    color: _page == 1
                        ? GlobalVariables.selectedNavBarColor
                        : GlobalVariables.unselectedNavBarColor,
                  ),
                  Text(
                    "WISHLIST",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: _page == 1
                          ? GlobalVariables.selectedNavBarColor
                          : GlobalVariables.unselectedNavBarColor,
                      fontSize: 10,
                      fontFamily: "DMSans",
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            label: '',
          ),
          // CART
          BottomNavigationBarItem(
            icon: Container(
              child: Column(
                children: [
                  Image.asset(
                    'assets/images/order.png',
                    width: bottomBarWidth,
                    height: 60,
                    color: _page == 2
                        ? GlobalVariables.selectedNavBarColor
                        : GlobalVariables.unselectedNavBarColor,
                  ),
                  Text(
                    "ORDER",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: _page == 2
                          ? GlobalVariables.selectedNavBarColor
                          : GlobalVariables.unselectedNavBarColor,
                      fontSize: 10,
                      fontFamily: "DMSans",
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Container(
              child: Column(
                children: [
                  Image.asset(
                    'assets/images/login.png',
                    width: bottomBarWidth,
                    height: 60,
                    color: _page == 3
                        ? GlobalVariables.selectedNavBarColor
                        : GlobalVariables.unselectedNavBarColor,
                  ),
                  Text(
                    "LOGIN",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: _page == 3
                          ? GlobalVariables.selectedNavBarColor
                          : GlobalVariables.unselectedNavBarColor,
                      fontSize: 10,
                      fontFamily: "DMSans",
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            label: '',
          ),
        ],
      ),
    );
  }
}
