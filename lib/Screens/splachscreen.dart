import 'dart:async';
import 'package:flutter/material.dart';
import 'package:hajjguide/Screens/home_layoute.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) => const HomeLayoute()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Image(image: AssetImage('assets/images/splash.jpeg'),
        fit: BoxFit.cover,),
      )
    );
  }
}
