import 'package:flutter/material.dart';
import '../AuthScreens/signupscreen1.dart';
import '../Widgets/buttons.dart';
import '../Widgets/color.dart';
import '../Widgets/images.dart';
import '../Widgets/sizedbox.dart';
import '../Widgets/text.dart';
import '../Widgets/textbox.dart';
import '../homescreen/dashboard.dart';

final mobileController = TextEditingController();
final otpController = TextEditingController();
final _formKey = GlobalKey<FormState>();

class ForgetScreen extends StatelessWidget {
  const ForgetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeColors.themeblack,
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: _formKey,
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
                hintText: 'Enter your Mobile Number',
                controller: mobileController,
                validatorText: 'Enter Mobile Number',
                icon: const Icon(
                  Icons.phone,
                  color: ThemeColors.grey,
                ),
              ),
              const SizedBox50(),
              NormalText(
                  size: 20,
                  color: ThemeColors.primary1,
                  text: 'OTP Verification',
                  weight: FontWeight.bold),
              const SizedBox10(),
              Padding(
                padding: const EdgeInsets.only(left: 90, right: 90),
                child: NormalTextField(
                  hintText: 'Enter OTP',
                  controller: otpController,
                  validatorText: 'Enter OTP',
                  icon: const Icon(
                    Icons.lock,
                    color: ThemeColors.grey,
                  ),
                ),
              ),
              const SizedBox10(),
              Center(
                child: NormalText(
                    size: 12,
                    color: ThemeColors.grey,
                    text:
                        'An OTP will be sent to your mobile number registered with My3 ',
                    weight: FontWeight.w400),
              ),
              const SizedBox20(),
              BorderButton(
                textName: 'SIGN IN',
                color: ThemeColors.primary1,
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => const DashBoard(),
                      ),
                      (route) => false);
                  // Navigator.of(context).pushReplacement(MaterialPageRoute(
                  //     builder: (BuildContext context) => const DashBoard()));
                  // if (_formKey.currentState!.validate()) {
                  //   Navigator.of(context).push(MaterialPageRoute(
                  //       builder: (BuildContext context) =>
                  //           const DashBoard()));
                  //   log('Sign In');
                  // }
                },
                width: double.infinity,
                weight: FontWeight.bold,
                size: 18,
              ),
              const SizedBox40(),
              NormalText(
                  size: 20,
                  color: ThemeColors.primary1,
                  text: 'Don’t have a My3 account ?',
                  weight: FontWeight.bold),
              const SizedBox30(),
              BorderButton(
                  textName: 'REGISTER',
                  color: ThemeColors.primary1,
                  onPressed: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
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
    );
  }
}
