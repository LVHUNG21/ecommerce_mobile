import 'dart:ui';

import 'package:ecommerce_mobile/common/custom_button.dart';
import 'package:ecommerce_mobile/common/divider.dart';
import 'package:ecommerce_mobile/constants/global_variables.dart';
import 'package:ecommerce_mobile/home/widget/Body.dart';
import 'package:ecommerce_mobile/home/widget/LoginScreen.dart';
import 'package:ecommerce_mobile/home/widget/carousel_image.dart';
import 'package:ecommerce_mobile/home/widget/categories.dart';
import 'package:ecommerce_mobile/home/widget/lastest_news.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  final bool login;
  const HomeScreen({Key? key, this.login = false}) : super(key: key);
  static const String routeName = '/home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(50),
          child: AppBar(
            flexibleSpace: Container(
              color: GlobalVariables.backgroundColor,
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  "Mega Mall",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: GlobalVariables.MegaTextColor,
                    fontSize: 18,
                    fontFamily: "DMSans",
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(width: 39.50),
              ],
            ),
            actions: [
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 10),
                child: IconButton(
                  icon: Image.asset('assets/images/cart.png'),
                  onPressed: () {
                    // Add your cart button onPressed callback here
                  },
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 10),
                child: IconButton(
                  icon: Image.asset('assets/images/ring.png'),
                  onPressed: () {
                    // Add your notification button onPressed callback here
                  },
                ),
              ),
            ],
          ),
        ),
        body: widget.login == false
            ? Stack(children: [
                SingleChildScrollView(
                  child: Container(
                    padding: EdgeInsets.only(top: 30, left: 25, right: 25),
                    child: Column(
                      children: [
                        Container(
                            color: GlobalVariables.searchbackgroudColor,
                            child: TextFormField(
                              decoration: InputDecoration(
                                suffixIcon: IconButton(
                                  icon: Image.asset('assets/images/search.png'),
                                  onPressed: () {
                                    // Add your notification button onPressed callback here
                                  },
                                ),
                                border: const OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                  borderSide: BorderSide.none,
                                ),
                                enabledBorder: const OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                  borderSide: BorderSide(
                                    color: GlobalVariables.searchborderColor,
                                    width: 1,
                                  ),
                                ),
                                hintText: "Search Amazon.in",
                                hintStyle: const TextStyle(
                                  color: Color(0xffc4c5c4),
                                  fontSize: 14,
                                  fontFamily: "DMSans",
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            )),
                        SizedBox(
                          height: 20,
                        ),
                        CarouselImage(),
                        TopCategories(),
                        SizedBox(
                          height: 19,
                        ),
                        Body(),
                        SizedBox(
                          height: 30,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 25, right: 25),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Latest News",
                                style: TextStyle(
                                  color: Color(0xff0c1a30),
                                  fontSize: 16,
                                  fontFamily: "DMSans",
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        LastestNews(),
                        SizedBox(height: 20),
                        divider1(),
                        SizedBox(height: 20),
                        LastestNews(),
                        SizedBox(height: 20),
                        divider1(),
                        SizedBox(height: 20),
                        LastestNews(),
                        SizedBox(
                          height: 30,
                        ),
                        CustomButton(),
                      ],
                    ),
                  ),
                ),
                BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                  child: Container(
                    color: Colors.grey.withOpacity(0.5),
                  ),
                ),
                LoginScreen()
              ])
            : HomeScreen(
                login: true,
              ));
  }
}
