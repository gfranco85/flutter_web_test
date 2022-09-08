import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_web_test/Views/Home.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    loadWidget();
  }

  loadWidget(){
    var duration = Duration(seconds: 2);
    return Timer(duration, ()=>Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Home())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: const [
              SpinKitThreeBounce(
                color: Colors.yellowAccent,
                size: 30,
              ),
              Text(
                "Stealing Your Data  😉",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                  letterSpacing: 2,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
