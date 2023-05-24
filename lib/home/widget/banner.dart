import 'package:ecommerce_mobile/constants/global_variables.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class BannerMain extends StatefulWidget {
  const BannerMain({super.key});

  @override
  State<BannerMain> createState() => _BannerMainState();
}

class _BannerMainState extends State<BannerMain> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      padding: EdgeInsets.only(left: 26, right: 24),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: GlobalVariables.BannerMainColor),
      child: Stack(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.only(left: 24, top: 30),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "C02 - Cable Multifuntion",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: "DM Sans",
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(right: 43),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Shop now",
                            style: TextStyle(
                              color: Color(0x7fffffff),
                              fontSize: 14,
                              fontFamily: "DM Sans",
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          IconButton(
                            icon: Icon(Icons.arrow_forward),
                            onPressed: () {
                              // Add your onPressed logic here
                              print('Button pressed!');
                            },
                          ),
                        ],
                      ),
                    )
                  ]),
            ),
            Container(
              padding: EdgeInsets.only(right: 24, top: 12.5, bottom: 12.5),
              child: Image.asset(
                'assets/images/daydiendaydien.png',
                fit: BoxFit.fill,
              ),
            )
          ],
        )
      ]),
    );
  }
}
