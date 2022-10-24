import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_web_test/Adapter/AppbarAdapter/MobileAppBar.dart';
import 'package:flutter_web_test/Adapter/AppbarAdapter/OtherDeviceAppBar.dart';
import 'package:flutter_web_test/Adapter/HomePageAdapter/Introduction.dart';
import 'package:flutter_web_test/Adapter/MobileDrawerAdapter/MobileDrawer.dart';
import 'package:flutter_web_test/Adapter/SocialAccounts.dart';
import 'package:day_night_switcher/day_night_switcher.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  /// Whether dark mode is enabled.
  ///
  void onStateChanged(bool isDarkModeEnabled) {
    setState(() {
      this.isDarkModeEnabled = isDarkModeEnabled;
    });
  }

  bool isDarkModeEnabled = false;

  late double hight, width;
  @override
  Widget build(BuildContext context) {
    hight = MediaQuery.of(context).size.height > 600
        ? MediaQuery.of(context).size.height
        : 600;
    width = MediaQuery.of(context).size.width > 300
        ? MediaQuery.of(context).size.width
        : 300;

    return Scaffold(
      drawer: width < 600 ? MobileDrawer() : Container(),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: width < 600 ? MobileAppBar() : OtherDeviceAppBar(),
      ),

      //backgroundColor: Colors.teal,
      backgroundColor: isDarkModeEnabled ? Colors.black : Colors.lightBlue[300],
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            padding: EdgeInsets.all(10),
            width: width,
            height: hight,
            child: Container(
                child: ListView(
              children: [
                Row(
                  children: [
                    Flexible(
                      flex: 1,
                      child: DayNightSwitcher(
                        isDarkModeEnabled: isDarkModeEnabled,
                        onStateChanged: (isDarkModeEnabled) {
                          setState(() {
                            this.isDarkModeEnabled = isDarkModeEnabled;
                          });
                        },
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Flexible(flex: 1, child: SocialAccounts()),
                    Flexible(
                      flex: 10,
                      child: Container(
                        padding: EdgeInsets.all(15),
                        child: Introduction(),
                      ),
                    ),
                  ],
                ),
              ],
            )),
          ),
        ),
      ),
    );
  }
}
