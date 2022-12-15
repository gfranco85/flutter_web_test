import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_test/Adapter/AppbarAdapter/MobileAppBar.dart';
import 'package:flutter_web_test/Adapter/AppbarAdapter/OtherDeviceAppBar.dart';
import 'package:flutter_web_test/Adapter/MobileDrawerAdapter/MobileDrawer.dart';
import 'package:flutter_web_test/Adapter/ProjectsAdapter/ProjectsAdapter.dart';
import 'package:day_night_switcher/day_night_switcher.dart';

class Projects extends StatefulWidget {
  @override
  _ProjectsState createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {
  late double hight, width;
  Future count(int n) async {
    return Future.delayed(Duration(seconds: n));
  }

  void onStateChanged(bool isDarkModeEnabled) {
    setState(() {
      this.isDarkModeEnabled = isDarkModeEnabled;
    });
  }

  bool isDarkModeEnabled = false;

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
      //backgroundColor: Colors.black,
      backgroundColor: isDarkModeEnabled ? Colors.black : Colors.lightBlue[300],
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Container(
            padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
            height: hight,
            width: width,
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
                Center(
                    child: Container(
                  child: AnimatedTextKit(
                    isRepeatingAnimation: false,
                    animatedTexts: [
                      TypewriterAnimatedText("My Projects",
                          speed: Duration(milliseconds: 80),
                          textStyle: TextStyle(
                              fontSize: width > 600 ? 40 : 27,
                              color: Colors.white,
                              letterSpacing: 4),
                          textAlign: TextAlign.start),
                    ],
                  ),
                )),
                SizedBox(
                  height: 15,
                ),
                FutureBuilder(
                    future: count(2),
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.done) {
                        return ProjectAdapter(
                          ProjectName: "Flutter List View",
                          ProjectLogoPath: 'assets/images/flutterList.png',
                          ProjectDescription:
                              "People list and api consumption in Flutter web and mobile. \nOne can use it as a code editor (Dart,c++,html,) and sharing purpose",
                          ProjectDescriptionForMobile:
                              "People list and api consumption in Flutter web and mobile. \nOne can use it as a code editor (Dart,c++,html,) and sharing purpose",
                          FirstTechnology: 'FLUTTER ',
                          SecondTechnology: ' , C++ ',
                          ThirdTechnology: ' , HTML ',
                          ForthTechnology: ' , REST API',
                          ProjectUrl:
                              "https://gitlab.com/gfrancos/flutter-list-view",
                        );
                      }
                      return Container();
                    }),
                SizedBox(
                  height: 12,
                ),
                FutureBuilder(
                    future: count(3),
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.done) {
                        return ProjectAdapter(
                          ProjectName: "tensorflowjs-object-detection",
                          ProjectLogoPath:
                              'assets/images/object-detection-illustration.png',
                          ProjectDescription:
                              "Detection of objects in the browser with tensorflowjs.",
                          ProjectDescriptionForMobile:
                              "Detection of objects in the browser with tensorflowjs.",
                          FirstTechnology: ' Tensorflowjs ',
                          SecondTechnology: ' , Javascript ',
                          ThirdTechnology: ' , Html',
                          ForthTechnology: ' , CSS',
                          ProjectUrl:
                              "https://gitlab.com/gfrancos/tensorflowjs-object-detection",
                        );
                      }
                      return Container();
                    }),
                SizedBox(
                  height: 12,
                ),
                FutureBuilder(
                    future: count(4),
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.done) {
                        return ProjectAdapter(
                          ProjectName: "Compare_Faces",
                          ProjectLogoPath: 'assets/images/stock-1.jpg',
                          ProjectDescription:
                              "Project that extracts faces from a folder and groups them by their resemblance",
                          ProjectDescriptionForMobile:
                              "Project that extracts faces from a folder and groups them by their resemblance",
                          FirstTechnology: 'PYTHON ',
                          SecondTechnology: '',
                          ThirdTechnology: '',
                          ForthTechnology: '',
                          ProjectUrl:
                              "https://gitlab.com/gfrancos/compare_faces",
                        );
                      }
                      return Container();
                    }),
                SizedBox(
                  height: 12,
                ),
                FutureBuilder(
                    future: count(5),
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.done) {
                        return ProjectAdapter(
                          ProjectName: "RPIZero_Security_Camera",
                          ProjectLogoPath: 'assets/images/cctv-camera_blog.jpg',
                          ProjectDescription:
                              "Local streaming project with motion detector and telegram notifications.",
                          ProjectDescriptionForMobile:
                              "Local streaming project with motion detector and telegram notifications.",
                          FirstTechnology: 'PYTHON',
                          SecondTechnology: 'Javascript',
                          ThirdTechnology: ' , HTML',
                          ForthTechnology: 'CSS',
                          ProjectUrl:
                              "https://gitlab.com/gfrancos/rpizero_security_camera",
                        );
                      }
                      return Container();
                    }),
                SizedBox(
                  height: 70,
                ),
                FutureBuilder(
                    future: count(5),
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.done) {
                        return ProjectAdapter(
                          ProjectName: "Masked faces",
                          ProjectLogoPath: 'assets/images/mask.jpeg',
                          ProjectDescription:
                              "Program that puts masks on people's faces.",
                          ProjectDescriptionForMobile:
                              "Program that puts masks on people's faces.",
                          FirstTechnology: 'PYTHON',
                          SecondTechnology: '',
                          ThirdTechnology: '',
                          ForthTechnology: '',
                          ProjectUrl:
                              "https://gitlab.com/gfrancos/masked-faces",
                        );
                      }
                      return Container();
                    }),
                SizedBox(
                  height: 70,
                ),
                FutureBuilder(
                    future: count(5),
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.done) {
                        return ProjectAdapter(
                          ProjectName: "Heatmap",
                          ProjectLogoPath: 'assets/images/heatmap.jpeg',
                          ProjectDescription:
                              "Project to generate heat maps through a video or streaming.",
                          ProjectDescriptionForMobile:
                              "Project to generate heat maps through a video or streaming.",
                          FirstTechnology: 'PYTHON',
                          SecondTechnology: '',
                          ThirdTechnology: '',
                          ForthTechnology: '',
                          ProjectUrl: "https://gitlab.com/gfrancos/heatmap",
                        );
                      }
                      return Container();
                    }),
                SizedBox(
                  height: 70,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
