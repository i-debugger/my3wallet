import 'package:flutter/material.dart';
import '../AuthScreens/signupsuccessfull.dart';
import '../Widgets/buttons.dart';
import '../Widgets/color.dart';
import '../Widgets/images.dart';
import '../Widgets/sizedbox.dart';
import '../Widgets/text.dart';
import '../Widgets/textbox.dart';

final address1Controller = TextEditingController();
final address2Controller = TextEditingController();
final cityController = TextEditingController();
final pinCodeController = TextEditingController();
final stateController = TextEditingController();

final _formKey = GlobalKey<FormState>();

class SignUpScreen2 extends StatefulWidget {
  const SignUpScreen2({Key? key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen2>
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
                                text: 'Please confirm your details (2/2)',
                                weight: FontWeight.bold),
                            const SizedBox20(),
                            NormalText(
                                size: 14,
                                color: ThemeColors.grey,
                                text: 'All Fields are Compulsory',
                                weight: FontWeight.w500),
                            const SizedBox20(),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                NormalTextField(
                                  hintText: 'Address Line 1',
                                  controller: address1Controller,
                                  validatorText: 'Enter Address Line 1',
                                  icon: const Icon(
                                    Icons.home_outlined,
                                    color: ThemeColors.grey,
                                  ),
                                ),
                                const SizedBox5(),
                                NormalText(
                                    size: 14,
                                    color: ThemeColors.grey,
                                    text: 'House/ Appartment No.',
                                    weight: FontWeight.w500),
                              ],
                            ),
                            const SizedBox20(),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                NormalTextField(
                                  hintText: 'Address Line 1',
                                  controller: address2Controller,
                                  validatorText: 'Enter Address Line 1',
                                  icon: const Icon(
                                    Icons.home_outlined,
                                    color: ThemeColors.grey,
                                  ),
                                ),
                                const SizedBox(
                                  height: 5.0,
                                ),
                                NormalText(
                                    size: 14,
                                    color: ThemeColors.grey,
                                    text: 'Street & Locality',
                                    weight: FontWeight.w500),
                              ],
                            ),
                            const SizedBox20(),
                            NormalTextField(
                              hintText: 'Town/ City',
                              controller: cityController,
                              validatorText: 'Enter Town/ City',
                              icon: const Icon(
                                Icons.home_work_outlined,
                                color: ThemeColors.grey,
                              ),
                            ),
                            const SizedBox20(),
                            NormalTextField(
                              hintText: 'Pincode',
                              controller: pinCodeController,
                              validatorText: 'Enter Pincode',
                              icon: const Icon(
                                Icons.home_work_outlined,
                                color: ThemeColors.grey,
                              ),
                            ),
                            const SizedBox20(),
                            NormalTextField(
                              hintText: 'State',
                              controller: stateController,
                              validatorText: 'Enter State',
                              icon: const Icon(
                                Icons.pin_drop_outlined,
                                color: ThemeColors.grey,
                              ),
                            ),
                            const SizedBox20(),
                            Align(
                              alignment: AlignmentDirectional.bottomEnd,
                              child: BorderWithIconButton(
                                textName: 'PROCEED',
                                onPressed: () {
                                  Navigator.pushAndRemoveUntil(
                                      context,
                                      MaterialPageRoute(
                                        builder: (BuildContext context) =>
                                            const RegisterSuccessfullScreen(),
                                      ),
                                      (route) => false);
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
