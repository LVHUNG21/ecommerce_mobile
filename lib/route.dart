import 'package:flutter/material.dart';

import 'home/screen/home_screen.dart';

Route<dynamic> generateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case HomeScreen.routeName:
      bool login = routeSettings.arguments as bool;
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => HomeScreen(login: login),
      );

    default:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const Scaffold(
          body: Center(
            child: Text('Screen does not exist!'),
          ),
        ),
      );
  }
}
