import 'package:flutter/material.dart';
import 'package:flutter_web_test/Views/SplashScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Gabriel Franco',
      theme: ThemeData(primarySwatch: Colors.blue, fontFamily: 'Ubuntu'),
      home: SplashScreen(),
    );
  }
}
