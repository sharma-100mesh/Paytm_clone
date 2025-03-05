import 'dart:async';

import 'package:flutter/material.dart';
import 'package:paytm_clone/home_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    Timer(Duration(seconds: 2),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomePage()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            SizedBox(height: 400,),
            Container(
              height: 100,
                width: 150,
                child: Image.asset('assets/images/icons/paytm splash screen.webp',fit: BoxFit.cover,)
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Top Rated',style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold,color: Color(0xff041575)),),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('UPI App in india',style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold,color: Color(0xff041575)),),
              ],
            ),
            Container(
              height: 8,
              width: 240,
              color: Colors.blue,
            ),
            Container(
              height: 8,
              width: 240,
              color: Color(0xff041575),
            ),
            SizedBox(height: 70,)

          ],
        ),
      )
    );
  }
}
