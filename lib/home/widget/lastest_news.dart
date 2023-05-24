import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class LastestNews extends StatelessWidget {
  const LastestNews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(left: 25, right: 25),
        height: 100,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Philosophy That Addresses Topics Such As Goodness",
                      style: TextStyle(
                        color: Color(0xff06070c),
                        fontSize: 14,
                        fontFamily: "DMSans",
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Agar tetap kinclong, bodi motor ten...",
                      style: TextStyle(
                        color: Color(0xff06070c),
                        fontSize: 12,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "13 Jan 2021",
                      style: TextStyle(
                        color: Color(0xff838589),
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 80,
                  padding: EdgeInsets.only(
                    bottom: 20,
                    right: 0,
                    top: 0,
                  ),
                  child: Image.asset(
                    'assets/images/lastnew1.png',
                    fit: BoxFit.contain,
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}
