import 'package:flutter/material.dart';

import '../models/Banner.dart';

const String uri = 'http://localhost:3003';

class GlobalVariables {
  // COLORS
  static const appBarGradient = LinearGradient(
    colors: [
      Color.fromARGB(255, 29, 201, 192),
      Color.fromARGB(255, 125, 221, 216),
    ],
    stops: [0.5, 1.0],
  );

  static const Color MegaTextColor = Color(0xff3669c9);
  static const Color Gadget = Color(0xFFF1EDFC);
  static const Color FoodsColor = Color.fromRGBO(228, 243, 234, 0);
  static const Color GiftColor = Color.fromRGBO(255, 236, 232, 0);
  static const Color FashionColor = Color.fromRGBO(255, 246, 228, 0);
  static const Color GadgetColor = Color.fromRGBO(241, 237, 252, 0);
  static const Color ComputeColor = Color.fromRGBO(228, 243, 234, 0);
  static const Color searchbackgroudColor = Color(0xffFAFAFA);
  static const Color searchborderColor = Color(0xffEDEDED);

  static const Color BannerMainColor = Color(0xFF0ACF83);
  static const Color DividerColor = Color(0xFFEDEDED);
  static const secondaryColor = Color.fromRGBO(255, 153, 0, 1);
  static const backgroundColor = Colors.white;
  static const Color greyBackgroundCOlor = Color.fromRGBO(235, 236, 238, 1);
  static var selectedNavBarColor = MegaTextColor;
  // static const Color unselectedNavBarColor = Color(0xff0c1a30);
  static const Color unselectedNavBarColor = const Color(0xFF0C1A30);
  // STATIC IMAGES
  static List<banner> carouselImages = [
    banner(
      assetImage: 'assets/images/redred.png',
      text1: "Gatis Ongkir Selama PPKM!",
      text2: "Periode Agustus 2021",
    ),
    banner(
      assetImage: 'assets/images/banner1banner1.png',
      text1: "Kemerdekaan\nDiskon 70%",
      text2: "Periode Agustus 2021",
    )
  ];

  static const List<Map<String, dynamic>> categoryImages = [
    {
      'title': 'Food',
      'image': 'assets/images/carot.png',
      'color': Color(0xffe4f3ea),
    },
    {
      'title': 'Gift',
      'image': 'assets/images/duahau.png',
      'color': Color(0xffffece8),
    },
    {
      'title': 'Fashion',
      'image': 'assets/images/fashion.png',
      'color': Color(0xfffff6e4),
    },
    {
      'title': 'Gadget',
      'image': 'assets/images/gadget.png',
      'color': Color(0xfff1edfc),
    },
    {
      'title': 'Compute',
      'image': 'assets/images/compute.png',
      'color': Color(0xffe4f3ea),
    },
  ];
}
