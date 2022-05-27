import 'dart:async';

import 'package:flutter/material.dart';
import 'package:test_screen/DashboardScreen.dart';
import 'package:test_screen/HomeScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  timer() async {
    Timer(Duration(seconds: 3), () async {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => DashboardScreen(),
      ));
    });
  }

  @override
  void initState() {
    timer();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        'assets/splash.png',
                      ),
                      fit: BoxFit.fill)),
            ),
            Text("mfine",style: TextStyle(color: Colors.blue),)
          ],
        ),
      ),
    );
  }
}
