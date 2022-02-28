import 'dart:async';

import 'package:flutter/material.dart';
import '../../Widgets/color.dart';
import '../../Widgets/images.dart';
import '../../Widgets/text.dart';
import '../../homescreen/dashboard.dart';

class StartPage extends StatefulWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeColors.ellipse13,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              Images.logo,
              scale: 1.5,
            ),
            NormalText(
                size: 30,
                color: ThemeColors.primary1,
                text: 'My3 App',
                weight: FontWeight.w600),
          ],
        ),
      ),
    );
  }

  void startTime() async {
    Timer(const Duration(seconds: 3), () {
      navigateUser();
    });
  }

  void navigateUser() async {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => const DashBoard()));
  }
}
