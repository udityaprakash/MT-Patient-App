import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:meditransparency/utils/screens/intro_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 5), () {
      
      Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const IntroScreen()),
  );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child:
    
    SvgPicture.asset("assets/images/splashlogo.svg")));
  }
}
