import 'package:ecommerce_mobile/home/widget/Best_seller.dart';
import 'package:ecommerce_mobile/home/widget/Special_Offer.dart';
import 'package:ecommerce_mobile/home/widget/banner.dart';
import 'package:ecommerce_mobile/home/widget/featured_product.dart';
import 'package:flutter/material.dart';

import '../../constants/global_variables.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
        color: Color(0xfffafafa),
      ),
      child: Container(
        padding: const EdgeInsets.only(left: 25, right: 25),
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Featured Product",
                style: TextStyle(
                  color: Color(0xff0c1a30),
                  fontSize: 16,
                  fontFamily: "DMSans",
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Text(
                "See All",
                style: TextStyle(
                  color: GlobalVariables.MegaTextColor,
                  fontSize: 12,
                  fontFamily: "DMSans",
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          FeaturedProduct(),
          SizedBox(
            height: 35,
          ),
          BannerMain(),
          SizedBox(
            height: 21,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Best Seller",
                style: TextStyle(
                  color: Color(0xff0c1a30),
                  fontSize: 16,
                  fontFamily: "DMSans",
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Text(
                "See All",
                style: TextStyle(
                  color: GlobalVariables.MegaTextColor,
                  fontSize: 12,
                  fontFamily: "DMSans",
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          BestSeller(),
          SizedBox(
            height: 35,
          ),
          BannerMain(),
          SizedBox(
            height: 21,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Special Product",
                style: TextStyle(
                  color: Color(0xff0c1a30),
                  fontSize: 16,
                  fontFamily: "DMSans",
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Text(
                "See All",
                style: TextStyle(
                  color: GlobalVariables.MegaTextColor,
                  fontSize: 12,
                  fontFamily: "DMSans",
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          ),
          SpecialProduct(),
        ]),
      ),
    );
  }
}
