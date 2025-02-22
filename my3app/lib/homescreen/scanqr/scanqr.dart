import 'package:flutter/material.dart';
import '../../Widgets/color.dart';
import '../../Widgets/container.dart';
import '../../Widgets/text.dart';
import '../../homescreen/dashboard.dart';

class ScanQR extends StatelessWidget {
  const ScanQR({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: ThemeColors.ellipse13,
          elevation: 0.0,
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => const DashBoard(),
                    ),
                    (route) => false);
              },
              child: NormalText(
                  size: 14,
                  color: ThemeColors.primary1,
                  text: 'Back to Dashboard',
                  weight: FontWeight.w500),
            ),
          ]),
      backgroundColor: ThemeColors.ellipse13,
      body: const SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(18.0),
              child: WidthContainer(
                widget1: Padding(
                    padding: EdgeInsets.all(18.0),
                    child: SizedBox(
                      height: 300,
                    )),
                width: double.infinity,
                radius: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
