import 'package:ecommerce_mobile/constants/global_variables.dart';
import 'package:flutter/material.dart';

class CustomButtonLogin extends StatelessWidget {
  const CustomButtonLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        // Add your login button onPressed logic here
      },
      style: ElevatedButton.styleFrom(
        fixedSize: Size(275, 50),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        primary: GlobalVariables.MegaTextColor,
      ),
      child: Text(
        "Login",
        style: TextStyle(
          color: Colors.white,
          fontSize: 14,
          fontFamily: "DMSans",
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
