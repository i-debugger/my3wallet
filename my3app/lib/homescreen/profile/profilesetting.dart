import 'package:flutter/material.dart';
import '../../Widgets/color.dart';
import '../../Widgets/sizedbox.dart';
import '../../Widgets/text.dart';
import '../../Widgets/textbox.dart';
import '../../homescreen/dashboard.dart';

class ProfileSetting extends StatefulWidget {
  const ProfileSetting({super.key});

  @override
  _ProfileSettingState createState() => _ProfileSettingState();
}

class _ProfileSettingState extends State<ProfileSetting> {
  bool isShow0 = false;
  bool isShow1 = false;
  bool isShow2 = false;
  bool isShow3 = false;

  final emailController = TextEditingController();
  final otp1Controller = TextEditingController();
  final otp2Controller = TextEditingController();
  final phoneNoController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: ThemeColors.black,
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
                  color: ThemeColors.primary2,
                  text: 'Back to Dashboard',
                  weight: FontWeight.w500),
            ),
          ]),
      backgroundColor: ThemeColors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const SizedBox20(),
              CircleAvatar(
                radius: 50,
                backgroundColor: ThemeColors.ellipse11,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: NormalText(
                    size: 40,
                    weight: FontWeight.bold,
                    color: ThemeColors.black,
                    text: 'SS',
                  ),
                ),
              ),
              const SizedBox20(),
              NormalText(
                  size: 14,
                  color: ThemeColors.white,
                  text: 'KYC verified user',
                  weight: FontWeight.w400),
              const SizedBox20(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      NormalText(
                          size: 14,
                          color: ThemeColors.white,
                          text: 'Name: Shiba Shin',
                          weight: FontWeight.w400),
                      const Spacer(),
                      GestureDetector(
                        onTap: () {
                          isShow0
                              ? setState(() {
                                  isShow0 = false;
                                })
                              : setState(() {
                                  isShow0 = true;
                                });
                        },
                        child: const Icon(
                          Icons.report_gmailerrorred_rounded,
                          color: ThemeColors.primary2,
                        ),
                      ),
                    ],
                  ),
                  isShow0
                      ? Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            NormalText(
                                size: 12,
                                color: ThemeColors.primary2,
                                text:
                                    'This field is based on your KYC and cannot be\nchanged',
                                weight: FontWeight.w500),
                          ],
                        )
                      : const SizedBox(
                          height: 0.0,
                        ),
                ],
              ),
              const SizedBox10(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      NormalText(
                          size: 14,
                          color: ThemeColors.white,
                          text: 'Phone Number: 1234567890 ',
                          weight: FontWeight.w400),
                      const Spacer(),
                      GestureDetector(
                        onTap: () {
                          isShow1
                              ? setState(() {
                                  isShow1 = false;
                                })
                              : setState(() {
                                  isShow1 = true;
                                });
                        },
                        child: NormalText(
                            size: 14,
                            color: ThemeColors.primary2,
                            text: 'Change',
                            weight: FontWeight.w400),
                      ),
                    ],
                  ),
                  const SizedBox5(),
                  isShow1
                      ? Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                NormalTextFieldWithWidth(
                                  width:
                                      MediaQuery.of(context).size.width / 1.7,
                                  hintText: 'Phone Number',
                                  controller: phoneNoController,
                                  validatorText: 'Enter Phone Number',
                                  icon: const Icon(
                                    Icons.call,
                                    color: ThemeColors.grey,
                                  ),
                                ),
                                OtpTextBox(
                                  width:
                                      MediaQuery.of(context).size.width / 3.5,
                                  hintText: 'Enter OTP',
                                  controller: otp2Controller,
                                  validatorText: 'Enter OTP',
                                ),
                              ],
                            ),
                            const SizedBox5(),
                            NormalText(
                                size: 12,
                                color: ThemeColors.grey,
                                text:
                                    'An OTP will be been sent to your number for verification',
                                weight: FontWeight.w500),
                          ],
                        )
                      : const SizedBox(
                          height: 0.0,
                        ),
                ],
              ),
              const SizedBox10(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      NormalText(
                          size: 14,
                          color: ThemeColors.white,
                          text: 'Email ID: Shibashin@xyz.com',
                          weight: FontWeight.w400),
                      const Spacer(),
                      GestureDetector(
                        onTap: () {
                          isShow2
                              ? setState(() {
                                  isShow2 = false;
                                })
                              : setState(() {
                                  isShow2 = true;
                                });
                        },
                        child: NormalText(
                            size: 14,
                            color: ThemeColors.primary2,
                            text: 'Change',
                            weight: FontWeight.w400),
                      ),
                    ],
                  ),
                  const SizedBox5(),
                  isShow2
                      ? Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                NormalTextFieldWithWidth(
                                  width:
                                      MediaQuery.of(context).size.width / 1.7,
                                  hintText: 'Email ID',
                                  controller: phoneNoController,
                                  validatorText: 'Enter Email ID',
                                  icon: const Icon(
                                    Icons.call,
                                    color: ThemeColors.grey,
                                  ),
                                ),
                                const Spacer(),
                                OtpTextBox(
                                  width:
                                      MediaQuery.of(context).size.width / 3.5,
                                  hintText: 'Enter OTP',
                                  controller: otp2Controller,
                                  validatorText: 'Enter OTP',
                                ),
                              ],
                            ),
                            const SizedBox5(),
                            NormalText(
                                size: 12,
                                color: ThemeColors.grey,
                                text:
                                    'An OTP will be been sent to your number for verification',
                                weight: FontWeight.w500),
                          ],
                        )
                      : const SizedBox(
                          height: 0.0,
                        ),
                ],
              ),
              const SizedBox10(),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      NormalText(
                          size: 14,
                          color: ThemeColors.white,
                          text: 'My3 password',
                          weight: FontWeight.w400),
                      GestureDetector(
                        onTap: () {
                          isShow3
                              ? setState(() {
                                  isShow3 = false;
                                })
                              : setState(() {
                                  isShow3 = true;
                                });
                        },
                        child: NormalText(
                            size: 14,
                            color: ThemeColors.primary2,
                            text: 'Change',
                            weight: FontWeight.w400),
                      ),
                    ],
                  ),
                  isShow3
                      ? Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox5(),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                NormalTextField(
                                  hintText: 'Set Password',
                                  controller: passwordController,
                                  validatorText: 'Enter Password',
                                  icon: const Icon(
                                    Icons.lock_outline,
                                    color: ThemeColors.grey,
                                  ),
                                ),
                                const SizedBox5(),
                                NormalText(
                                    size: 12,
                                    color: ThemeColors.grey,
                                    text: 'Password Constraints',
                                    weight: FontWeight.w500),
                              ],
                            ),
                            const SizedBox5(),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                NormalTextField(
                                  hintText: 'Confirm Password',
                                  controller: passwordController,
                                  validatorText: 'Enter Password',
                                  icon: const Icon(
                                    Icons.lock_outline,
                                    color: ThemeColors.grey,
                                  ),
                                ),
                                const SizedBox5(),
                                NormalText(
                                    size: 12,
                                    color: ThemeColors.grey,
                                    text: 'Ensure that passwords match',
                                    weight: FontWeight.w500),
                              ],
                            ),
                            const SizedBox20(),
                          ],
                        )
                      : const SizedBox(
                          height: 0.0,
                        ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
