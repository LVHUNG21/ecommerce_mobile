import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../constants/global_variables.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 24,
                  width: 24,
                  child: Center(
                    child: Image.asset(
                      'assets/images/back.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                )
              ],
            ),
          )),
      body: Container(
        padding: EdgeInsets.only(left: 25, right: 25),
        child: Column(
          children: [
            Container(
              height: 66,
              child: Text(
                "Welcome back to \nMega Mall",
                style: TextStyle(
                  color: Color(0xff0c1a30),
                  fontSize: 25,
                  fontFamily: "DMSans",
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
              height: 25,
              child: Text(
                "Silahkan masukan data untuk login",
                style: TextStyle(
                  color: Color(0xff838589),
                  fontSize: 14,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 22, right: 28),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 19,
                    padding: EdgeInsets.only(left: 0, top: 0),
                    child: Text(
        "Email/ Phone",
        style: TextStyle(
            color: Color(0xff0c1a30),
            fontSize: 14,
        ),
    ),,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
