import 'package:flutter/material.dart';
import 'package:meditransparency/utils/screens/intro_screen.dart';
import 'package:meditransparency/utils/screens/splash_screen.dart';
import 'package:meditransparency/utils/widgets/no_internet.dart';
import 'package:provider/provider.dart';

import 'data/dataflow/internetconnectivity.dart';

class CustomRoute {
  static Route<dynamic> allRoutes(RouteSettings settings) {
    return MaterialPageRoute(builder: (context) {
      final bool isOnline = Provider.of<ConnectivityProvider>(context).isOnline;
      if (!isOnline) {
        return NoConnectionScreen();
      }
      switch (settings.name) {
        case "splashpage":
          // ignore: prefer_const_constructors
          return SplashScreen();
        case "featurescreen":
          return IntroScreen();
        // case "home":
        //   // ignore: prefer_const_constructors
        //   return home();
      }

      // ignore: prefer_const_constructors
      return IntroScreen();
    });
  }
}
