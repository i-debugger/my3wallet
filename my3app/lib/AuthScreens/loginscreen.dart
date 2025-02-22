import 'package:flutter/material.dart';
import '../AuthScreens/forgetscreen.dart';
import '../AuthScreens/signupscreen1.dart';
import '../homescreen/dashboard.dart';
import '../Widgets/buttons.dart';
import '../Widgets/color.dart';
import '../Widgets/images.dart';
import '../Widgets/sizedbox.dart';
import '../Widgets/text.dart';
import '../Widgets/textbox.dart';

final usernameController = TextEditingController();
final passwordController = TextEditingController();
final _formKey = GlobalKey<FormState>();

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeColors.themeblack,
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: _formKey,
          child: Center(
            child: Column(
              children: [
                const SizedBox20(),
                Image.asset(
                  Images.logo,
                  scale: 2.0,
                ),
                const SizedBox20(),
                NormalText(
                    size: 20,
                    color: ThemeColors.primary1,
                    text: 'Sign in to your My3 Account',
                    weight: FontWeight.bold),
                const SizedBox20(),
                NormalTextField(
                  hintText: 'Username',
                  controller: usernameController,
                  validatorText: 'Enter Username',
                  icon: const Icon(
                    Icons.person_outline_rounded,
                    color: ThemeColors.grey,
                  ),
                ),
                const SizedBox20(),
                NormalTextField(
                  hintText: 'Password',
                  controller: passwordController,
                  validatorText: 'Enter Password',
                  icon: const Icon(
                    Icons.lock,
                    color: ThemeColors.grey,
                  ),
                ),
                const SizedBox5(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (BuildContext context) =>
                                const ForgetScreen()));
                      },
                      child: NormalText(
                          size: 14,
                          color: ThemeColors.grey,
                          text: 'Forgot Username?',
                          weight: FontWeight.w400),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (BuildContext context) =>
                                const ForgetScreen()));
                      },
                      child: NormalText(
                          size: 14,
                          color: ThemeColors.grey,
                          text: 'Forgot Password?',
                          weight: FontWeight.w400),
                    ),
                  ],
                ),
                const SizedBox5(),
                BorderButton(
                  textName: 'SIGN IN',
                  color: ThemeColors.ellipse12,
                  onPressed: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (BuildContext context) => const DashBoard()));
                    // if (_formKey.currentState!.validate()) {
                    //   Navigator.of(context).pushReplacement(MaterialPageRoute(
                    //       builder: (BuildContext context) =>
                    //           const DashBoard()));
                    //   log('Sign In');
                    // }
                  },
                  width: double.infinity,
                  weight: FontWeight.bold,
                  size: 18,
                ),
                const SizedBox50(),
                const SizedBox20(),
                NormalText(
                    size: 20,
                    color: ThemeColors.primary1,
                    text: 'Don’t have a My3 account ?',
                    weight: FontWeight.bold),
                const SizedBox20(),
                BorderButton(
                    textName: 'REGISTER',
                    color: ThemeColors.primary1,
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) =>
                              const SignUpScreen1()));
                    },
                    width: double.infinity,
                    weight: FontWeight.bold,
                    size: 18),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
