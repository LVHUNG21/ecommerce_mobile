import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class BestSeller extends StatefulWidget {
  const BestSeller({super.key});

  @override
  State<BestSeller> createState() => _BestSellerState();
}

class _BestSellerState extends State<BestSeller> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: GridView.builder(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.only(bottom: 4, top: 4),
        itemCount: 4,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          childAspectRatio: 1.4,
          mainAxisSpacing: 15,
        ),
        itemBuilder: (context, index) {
          return GestureDetector(
              onTap: () {},
              child: Container(
                decoration: BoxDecoration(
                    color: Color(0xffFFFFFF),
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: [
                    Container(
                      height: 130,
                      width: 130,
                      padding: EdgeInsets.only(left: 10, right: 16, top: 15),
                      child: Image.asset(
                        'assets/images/daydiendaydien.png',
                        fit: BoxFit.contain,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: EdgeInsets.only(
                        right: 10,
                        left: 10,
                      ),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "TMA-2 HD Wireless",
                              style: TextStyle(
                                color: Color(0xff0c1a30),
                                fontSize: 14,
                                fontFamily: "DMSans",
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              "Rp. 1.500.000",
                              style: TextStyle(
                                color: Color(0xfffe3a30),
                                fontSize: 12,
                                fontFamily: "DMSans",
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Stack(children: [
                              Container(
                                height: 13,
                                child: Row(
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          padding: EdgeInsets.only(),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                          child: Image.asset(
                                              'assets/images/ngoisao.png'),
                                        ),
                                        SizedBox(width: 3),
                                        Text(
                                          "4.6",
                                          style: TextStyle(
                                            color: Color(0xff0c1a30),
                                            fontSize: 10,
                                          ),
                                        ),
                                        SizedBox(width: 10),
                                        Text(
                                          "86 Reviews",
                                          style: TextStyle(
                                            fontFamily: 'DMSans',
                                            color: Color(0xff0c1a30),
                                            fontSize: 10,
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              Positioned(
                                child: Container(
                                  height: 11,
                                  child: GestureDetector(
                                    onTap: () {},
                                    child: Image.asset(
                                      'assets/images/bachambacham.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                right: 0,
                              )
                            ])
                          ]),
                    ),
                  ],
                ),
              ));
        },
      ),
    );
  }
}
