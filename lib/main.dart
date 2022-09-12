import 'package:flutter/material.dart';
import 'package:flutter_web_test/Views/SplashScreen.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  bool isDarkModeEnabled = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Gabriel Franco',
      //theme: ThemeData(backgroundColor: Colors.white),
      //theme: ThemeData(primarySwatch: Colors.blue, fontFamily: 'Ubuntu'),
      //theme: ThemeData.dark(), // default dark theme replaces default light theme
      //darkTheme: ThemeData.dark(), // standard dark theme
      //themeMode: ThemeMode.system, // device controls theme
       theme: ThemeData.light(),
      darkTheme: ThemeData.dark().copyWith(
        appBarTheme: const AppBarTheme(color: Color(0xFF253341)),
        scaffoldBackgroundColor: const Color(0xFF15202B),
      ),
      themeMode: isDarkModeEnabled ? ThemeMode.dark : ThemeMode.light,

      home: SplashScreen(),
    );
  }
}
