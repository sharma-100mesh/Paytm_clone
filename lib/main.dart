import 'package:flutter/material.dart';
import 'package:paytm_clone/home_page.dart';
import 'package:paytm_clone/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen()
    );
  }
}


