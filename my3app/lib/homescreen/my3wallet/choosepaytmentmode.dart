import 'package:flutter/material.dart';
import '../../AuthScreens/forgetscreen.dart';
import '../../Widgets/sizedbox.dart';
import '../../Widgets/textbox.dart';
import '../../homescreen/transactionsuccess/successfullwallet.dart';
import '../../Widgets/buttons.dart';
import '../../Widgets/color.dart';
import '../../Widgets/container.dart';
import '../../Widgets/images.dart';
import '../../Widgets/text.dart';

class ChoosePaytmentMode extends StatefulWidget {
  const ChoosePaytmentMode({Key? key}) : super(key: key);

  @override
  State<ChoosePaytmentMode> createState() => _PayWalletOrUPIState();
}

class _PayWalletOrUPIState extends State<ChoosePaytmentMode> {
  bool isChecked1 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ThemeColors.primary5,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 100),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                NormalText(
                    size: 16,
                    color: ThemeColors.primary2,
                    text: 'Sending Money to:',
                    weight: FontWeight.w700),
                const SizedBox10(),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Container(
                    color: ThemeColors.black,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundColor: ThemeColors.green,
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: NormalText(
                                size: 25,
                                weight: FontWeight.bold,
                                color: ThemeColors.black,
                                text: 'SS',
                              ),
                            ),
                          ),
                          const SizedBox20(),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                NormalText(
                                    size: 16,
                                    color: ThemeColors.white,
                                    text: 'Shiba Sheen',
                                    weight: FontWeight.w700),
                                const SizedBox5(),
                                NormalText(
                                    size: 16,
                                    color: ThemeColors.white,
                                    text: '1234567890',
                                    weight: FontWeight.w400),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox20(),
                WidthWhiteBorderContainer(
                  widget1: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      children: [
                        Image.asset(
                          Images.bank,
                          scale: 1.5,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              NormalText(
                                  size: 20,
                                  color: ThemeColors.white,
                                  text: 'Bank Account\nLinked to',
                                  weight: FontWeight.w700),
                              NormalText(
                                  size: 16,
                                  color: ThemeColors.white,
                                  text: '1234567890',
                                  weight: FontWeight.w400),
                            ],
                          ),
                        ),
                        const Spacer(),
                        GestureDetector(
                          onTap: () {},
                          child: Image.asset(
                            Images.unselected,
                            scale: 1,
                          ),
                        ),
                      ],
                    ),
                  ),
                  width: double.infinity,
                  radius: 20,
                ),
                const SizedBox20(),
                WidthWhiteBorderContainer(
                  widget1: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      children: [
                        Image.asset(
                          Images.wallet2,
                          scale: 1.5,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              NormalText(
                                  size: 20,
                                  color: ThemeColors.white,
                                  text: 'My3 Wallet\nLinked to ',
                                  weight: FontWeight.w700),
                              NormalText(
                                  size: 16,
                                  color: ThemeColors.white,
                                  text: '1234567890',
                                  weight: FontWeight.w400),
                            ],
                          ),
                        ),
                        const Spacer(),
                        GestureDetector(
                          onTap: () {},
                          child: Image.asset(
                            Images.unselected,
                            scale: 1,
                          ),
                        ),
                      ],
                    ),
                  ),
                  width: double.infinity,
                  radius: 20,
                ),
                const SizedBox10(),
                NormalText(
                  color: ThemeColors.primary1,
                  text: 'OTP Verification',
                  weight: FontWeight.w800,
                  size: 20,
                ),
                const SizedBox5(),
                SizedBox(
                  width: 150,
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
                Align(
                  alignment: AlignmentDirectional.bottomEnd,
                  child: BorderWithIconButton(
                    textName: 'PROCEED',
                    onPressed: () {
                      /* if (_formKey.currentState!.validate()) {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (BuildContext context) =>
                            const RegisterSuccessfullScreen()));
                        log('Sign Up Screen 2');
                      }*/
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) =>
                              const WalletSuccessfull()));
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
        ));
  }
}
