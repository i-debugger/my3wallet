import 'package:flutter/material.dart';
import '../AuthScreens/signupscreen2.dart';
import '../Widgets/buttons.dart';
import '../Widgets/color.dart';
import '../Widgets/images.dart';
import '../Widgets/sizedbox.dart';
import '../Widgets/text.dart';
import '../Widgets/textbox.dart';

final nameController = TextEditingController();
final panNoController = TextEditingController();
final aadhaarNoController = TextEditingController();
final emailController = TextEditingController();
final otp1Controller = TextEditingController();
final otp2Controller = TextEditingController();
final phoneNoController = TextEditingController();
final userNameController = TextEditingController();
final passwordController = TextEditingController();

final _formKey = GlobalKey<FormState>();

class SignUpScreen1 extends StatefulWidget {
  const SignUpScreen1({super.key});

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen1>
    with SingleTickerProviderStateMixin {
  late ScrollController scrollController;

  double minExtent = 0.4;
  double maxExtent = 0.72;

  bool isExpanded = true;

  @override
  void initState() {
    super.initState();
    scrollController = ScrollController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeColors.themeblack,
      body: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Image.asset(
                      Images.logo,
                      scale: 2.0,
                    ),
                    const SizedBox20(),
                    NormalText(
                        size: 24,
                        color: ThemeColors.primary1,
                        text: 'Register to My3',
                        weight: FontWeight.bold),
                  ],
                ),
              ),
            ],
          ),
          DraggableScrollableSheet(
            initialChildSize: 0.68,
            minChildSize: 0.68,
            maxChildSize: 0.68,
            expand: true,
            builder: (BuildContext context, scrollController) {
              return Container(
                decoration: const BoxDecoration(
                  color: ThemeColors.primary5,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(25),
                    topLeft: Radius.circular(25),
                  ),
                ),
                child: SingleChildScrollView(
                    child: Column(
                  children: <Widget>[
                    const Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 150, vertical: 15),
                      child: Divider(
                        thickness: 5,
                        color: ThemeColors.primary1,
                      ),
                    ),
                    Form(
                      key: _formKey,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 20, right: 20, bottom: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox10(),
                            NormalText(
                                size: 18,
                                color: ThemeColors.primary2,
                                text: 'Please confirm your details (1/2)',
                                weight: FontWeight.bold),
                            const SizedBox20(),
                            NormalText(
                                size: 14,
                                color: ThemeColors.grey,
                                text: 'All Fields are Compulsory',
                                weight: FontWeight.w500),
                            const SizedBox20(),
                            NormalTextField(
                              hintText: 'Name',
                              controller: nameController,
                              validatorText: 'Enter Name',
                              icon: const Icon(
                                Icons.local_offer_outlined,
                                color: ThemeColors.grey,
                              ),
                            ),
                            const SizedBox20(),
                            NormalTextField(
                              hintText: 'PAN Number',
                              controller: panNoController,
                              validatorText: 'Enter PAN Number',
                              icon: const Icon(
                                Icons.contact_mail_outlined,
                                color: ThemeColors.grey,
                              ),
                            ),
                            const SizedBox20(),
                            NormalTextField(
                              hintText: 'Aadhaar Number',
                              controller: aadhaarNoController,
                              validatorText: 'Enter Aadhaar Number',
                              icon: const Icon(
                                Icons.contact_mail_outlined,
                                color: ThemeColors.grey,
                              ),
                            ),
                            const SizedBox20(),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    NormalTextFieldWithWidth(
                                      hintText: 'Email ID',
                                      controller: emailController,
                                      validatorText: 'Enter Email ID',
                                      icon: const Icon(
                                        Icons.email_outlined,
                                        color: ThemeColors.grey,
                                      ),
                                      width: MediaQuery.of(context).size.width /
                                          1.7,
                                    ),
                                    OtpTextBox(
                                      hintText: 'Enter OTP',
                                      controller: otp1Controller,
                                      validatorText: 'Enter OTP',
                                      width: MediaQuery.of(context).size.width /
                                          3.5,
                                    ),
                                  ],
                                ),
                                const SizedBox10(),
                                NormalText(
                                    size: 14,
                                    color: ThemeColors.grey,
                                    text:
                                        'An OTP will be been sent to your email for  verification',
                                    weight: FontWeight.w500),
                              ],
                            ),
                            const SizedBox20(),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    NormalTextFieldWithWidth(
                                      width: MediaQuery.of(context).size.width /
                                          1.7,
                                      hintText: 'Phone Number',
                                      controller: phoneNoController,
                                      validatorText: 'Enter Phone Number',
                                      icon: const Icon(
                                        Icons.call,
                                        color: ThemeColors.grey,
                                      ),
                                    ),
                                    OtpTextBox(
                                      width: MediaQuery.of(context).size.width /
                                          3.5,
                                      hintText: 'Enter OTP',
                                      controller: otp2Controller,
                                      validatorText: 'Enter OTP',
                                    ),
                                  ],
                                ),
                                const SizedBox10(),
                                NormalText(
                                    size: 14,
                                    color: ThemeColors.grey,
                                    text:
                                        'An OTP will be been sent to your number for verification',
                                    weight: FontWeight.w500),
                              ],
                            ),
                            const SizedBox20(),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                NormalTextField(
                                  hintText: 'Set Username',
                                  controller: userNameController,
                                  validatorText: 'Enter  Username',
                                  icon: const Icon(
                                    Icons.person_outline_rounded,
                                    color: ThemeColors.grey,
                                  ),
                                ),
                                const SizedBox10(),
                                NormalText(
                                    size: 14,
                                    color: ThemeColors.grey,
                                    text: 'Username Constraints',
                                    weight: FontWeight.w500),
                              ],
                            ),
                            const SizedBox20(),
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
                                const SizedBox10(),
                                NormalText(
                                    size: 14,
                                    color: ThemeColors.grey,
                                    text: 'Password Constraints',
                                    weight: FontWeight.w500),
                              ],
                            ),
                            const SizedBox20(),
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
                                const SizedBox10(),
                                NormalText(
                                    size: 14,
                                    color: ThemeColors.grey,
                                    text: 'Ensure that passwords match',
                                    weight: FontWeight.w500),
                              ],
                            ),
                            const SizedBox20(),
                            Align(
                              alignment: AlignmentDirectional.bottomEnd,
                              child: BorderWithIconButton(
                                textName: 'PROCEED',
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          const SignUpScreen2()));

                                  // if (_formKey.currentState!.validate()) {
                                  //   Navigator.of(context).pushReplacement(MaterialPageRoute(
                                  //       builder: (BuildContext context) =>
                                  //           const SignUpScreen2()));
                                  //   log('Sign Up Screen 1');
                                  // }
                                },
                                width: MediaQuery.of(context).size.width / 2.7,
                                weight: FontWeight.bold,
                                size: 18,
                                icon: const Icon(
                                  Icons.arrow_forward,
                                  color: ThemeColors.primary1,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                )),
              );
            },
          ),
        ],
      ),
    );
  }
}
