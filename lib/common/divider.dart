import 'package:ecommerce_mobile/constants/global_variables.dart';
import 'package:flutter/material.dart';

class divider1 extends StatelessWidget {
  const divider1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Divider(
        // Add a separator line
        color: GlobalVariables.DividerColor,
        thickness: 1,
        // indent: 10,
        // endIndent: 10,
      ),
    );
  }
}
