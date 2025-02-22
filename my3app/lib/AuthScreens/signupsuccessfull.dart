import 'package:flutter/material.dart';
import '../AuthScreens/loginscreen.dart';
import '../Widgets/buttons.dart';
import '../Widgets/color.dart';
import '../Widgets/images.dart';
import '../Widgets/sizedbox.dart';
import '../Widgets/text.dart';

class RegisterSuccessfullScreen extends StatelessWidget {
  const RegisterSuccessfullScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ThemeColors.primary5,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(40.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    NormalText(
                        size: 24,
                        color: ThemeColors.primary1,
                        text: 'Congratulations!',
                        weight: FontWeight.bold),
                    const SizedBox20(),
                    Image.asset(
                      Images.successImage,
                      scale: 2.5,
                    ),
                    const SizedBox20(),
                    NormalText(
                        size: 20,
                        color: ThemeColors.primary1,
                        text: 'Your My3 account is now',
                        weight: FontWeight.bold),
                    NormalText(
                        size: 20,
                        color: ThemeColors.primary1,
                        text: 'registered',
                        weight: FontWeight.bold),
                    const SizedBox50(),
                    const SizedBox50(),
                    const SizedBox50(),
                    BorderButton(
                        textName: 'SIGN IN',
                        color: ThemeColors.primary1,
                        onPressed: () {
                          Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    const LoginScreen(),
                              ),
                              (route) => false);
                        },
                        width: double.infinity,
                        weight: FontWeight.bold,
                        size: 18),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
