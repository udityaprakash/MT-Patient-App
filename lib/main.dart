import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:meditransparency/data/constants/colors.dart';
import 'package:meditransparency/data/dataflow/internetconnectivity.dart';
import 'package:meditransparency/routes.dart';
import 'package:meditransparency/utils/screens/splash_screen.dart';
import 'package:provider/provider.dart';

import 'utils/screens/auth_screens/sign_in_screen.dart';
import 'utils/screens/auth_screens/sign_up_screen.dart';



Future main() async{
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((value) => runApp(const MyApp()));
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ConnectivityProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: 'splashpage',
    
        onGenerateRoute: CustomRoute.allRoutes,
        theme:
         ThemeData(
          scaffoldBackgroundColor: ui.backgroundclr,
          textTheme: Typography().white,
        ),
      ),
    );
  }
}