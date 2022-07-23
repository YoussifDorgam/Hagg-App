import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hajjguide/dio/dio_helper.dart';
import 'Screens/splachscreen.dart';
import 'blocObservar/blocObservar.dart';

void main() async {
  Bloc.observer = MyBlocObserver();
  WidgetsFlutterBinding.ensureInitialized();
  Diohelper.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
