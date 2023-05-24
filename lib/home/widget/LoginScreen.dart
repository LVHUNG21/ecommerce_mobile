import 'package:ecommerce_mobile/common/custom_buttonLogin.dart';
import 'package:ecommerce_mobile/common/divider.dart';
import 'package:ecommerce_mobile/home/screen/home_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  // static const routeName = '/login';
  // bool login;

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool login = false;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: MediaQuery.of(context).size.height / 2 - 180,
      left: MediaQuery.of(context).size.width / 2 -
          162.5, // Center the login screen horizontally
      child: Container(
        width: 325,
        height: 360,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.red.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 5,
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //   children: [
            Container(
              padding: EdgeInsets.only(top: 25, right: 25, left: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Login Account",
                    style: TextStyle(
                      color: Color(0xff0c1a30),
                      fontSize: 16,
                      fontFamily: "DMSans",
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Container(
                    width: 24,
                    height: 24,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: IconButton(
                        onPressed: () {
                          setState(() {
                            login = true;
                          });
                          Navigator.pushNamed(context, HomeScreen.routeName,
                              arguments: login);
                        },
                        icon: Image.asset('assets/images/x.png',
                            fit: BoxFit.contain)),
                  ),
                ],
              ),
            ),
            //   ],
            // ),
            const SizedBox(
              height: 20,
            ),
            const divider1(),
            const SizedBox(
              height: 33,
            ),
            Container(
              height: 156,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        child: Image.asset(
                          'assets/images/hello.png',
                          fit: BoxFit.contain,
                        ),
                      )
                    ],
                    mainAxisAlignment: MainAxisAlignment.center,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Anda perlu masuk terlebih dahulu",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontFamily: "DMSans",
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Silahkan login/ register telebih dahulu untuk melakukan transaksi",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xff838589),
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 27,
            ),
            CustomButtonLogin(),
            // Add your login screen content here
          ],
        ),
      ),
    );
  }
}
