import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        // Add your button's functionality here
      },
      style: ElevatedButton.styleFrom(
        primary: Colors.white,
        onPrimary: Color(0xff0c1a30),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: BorderSide(
            color: Color(0xff0c1a30),
            width: 1,
          ),
        ),
        padding: EdgeInsets.symmetric(horizontal: 153, vertical: 15),
      ),
      child: Container(
        padding: EdgeInsets.only(left: 25, right: 25),
        height: 50,
        child: Center(
          child: Text(
            "See All News",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xff0c1a30),
              fontSize: 14,
              fontFamily: "DM Sans",
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
