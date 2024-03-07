import 'package:flutter/material.dart';

import 'screens/home/home.dart';

Route getRoutes(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case HomeScreen.routeName:
      return MaterialPageRoute(
          settings: routeSettings,
          builder: (context) {
            return HomeScreen();
          });
    default:
      return MaterialPageRoute(builder: (context) {
        return Scaffold(
          body: Center(
            child: Text('Route does\'nt exist'),
          ),
        );
      });
  }
}
