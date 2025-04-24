import 'package:flutter/material.dart';
import 'package:paytm_clone/drawer_screen.dart';
// import 'package:paytm_clone/share_preference_practice.dart';
// import 'package:paytm_clone/share_preference_practice.dart';
import 'package:paytm_clone/ticket_screens/amts_ticket_screen.dart';
import 'package:paytm_clone/ticket_screens/booking_screen.dart';
import 'package:paytm_clone/home_page.dart';
import 'package:paytm_clone/splash_screen.dart';
import 'package:paytm_clone/ticket_screens/ticket_booking_screen.dart';
import 'package:paytm_clone/ticket_screens/ticket_timer.dart';
import 'package:paytm_clone/ticket_screens/view_ticket.dart';

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


