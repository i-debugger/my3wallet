import 'package:flutter/material.dart';
import '../../Widgets/buttons.dart';
import '../../Widgets/color.dart';
import '../../Widgets/container.dart';
import '../../Widgets/images.dart';
import '../../Widgets/sizedbox.dart';
import '../../Widgets/text.dart';
import '../../homescreen/dashboard.dart';

class PayThroughPay extends StatefulWidget {
  const PayThroughPay({super.key});

  @override
  _PayThroughPayState createState() => _PayThroughPayState();
}

class _PayThroughPayState extends State<PayThroughPay> {
  bool isShow0 = false;
  bool isShow1 = false;
  bool isShow2 = false;
  bool isShow3 = false;
  bool isShow4 = false;
  bool isShow5 = false;

  @override
  Widget build(BuildContext context) {
    // final cvvController = TextEditingController();

    return Scaffold(
        appBar: AppBar(
            backgroundColor: ThemeColors.primary5,
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
        backgroundColor: ThemeColors.primary5,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                NormalText(
                    size: 16,
                    color: ThemeColors.primary1,
                    text: 'Make Payment',
                    weight: FontWeight.w700),
                const SizedBox10(),
                NormalText(
                    size: 18,
                    color: ThemeColors.primary1,
                    text: 'Choose Payment Method',
                    weight: FontWeight.w700),
                const SizedBox10(),
                WidthWhiteBorderContainer(
                  width: double.infinity,
                  radius: 12,
                  widget1: Column(
                    children: [
                      const SizedBox5(),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset(
                              Images.upi,
                              scale: 2.0,
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            NormalText(
                                size: 20,
                                color: ThemeColors.white,
                                text: 'UPI',
                                weight: FontWeight.w700),
                            const Spacer(),
                            isShow1
                                ? GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        isShow1 = false;
                                      });
                                    },
                                    child: Image.asset(Images.selected))
                                : GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        isShow1 = true;
                                      });
                                    },
                                    child: Image.asset(Images.unselected))
                          ],
                        ),
                      ),
                      const SizedBox5(),
                      isShow1
                          ? SizedBox(
                              height: 150,
                              child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: 3,
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return Padding(
                                      padding: const EdgeInsets.all(20),
                                      child: WidthWhiteBorderContainer(
                                        width: 300,
                                        radius: 10,
                                        widget1: Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Row(
                                            children: [
                                              Image.asset(
                                                Images.demoBank,
                                                scale: 1.5,
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 20.0),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    NormalText(
                                                        size: 16,
                                                        color:
                                                            ThemeColors.white,
                                                        text: 'Bank Name',
                                                        weight:
                                                            FontWeight.w400),
                                                    const SizedBox5(),
                                                    NormalText(
                                                        size: 16,
                                                        color:
                                                            ThemeColors.white,
                                                        text: 'xxxxxxxx1234',
                                                        weight:
                                                            FontWeight.w400),
                                                    const SizedBox5(),
                                                    NormalText(
                                                        size: 16,
                                                        color:
                                                            ThemeColors.white,
                                                        text: 'Check Balance',
                                                        weight:
                                                            FontWeight.w400),
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
                                      ),
                                    );
                                  }),
                            )
                          : const SizedBox(
                              height: 0.0,
                            ),
                    ],
                  ),
                ),
                const SizedBox10(),
                WidthWhiteBorderContainer(
                  width: double.infinity,
                  radius: 12,
                  widget1: Column(
                    children: [
                      const SizedBox5(),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset(
                              Images.mobileBanking,
                              scale: 2.0,
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            NormalText(
                                size: 20,
                                color: ThemeColors.white,
                                text: 'Net Banking',
                                weight: FontWeight.w700),
                            const Spacer(),
                            isShow2
                                ? GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        isShow2 = false;
                                      });
                                    },
                                    child: Image.asset(Images.selected))
                                : GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        isShow2 = true;
                                      });
                                    },
                                    child: Image.asset(Images.unselected))
                          ],
                        ),
                      ),
                      const SizedBox5(),
                      isShow2
                          ? Column(
                              children: [
                                SizedBox(
                                  height: 150,
                                  child: ListView.builder(
                                      scrollDirection: Axis.horizontal,
                                      itemCount: 3,
                                      itemBuilder:
                                          (BuildContext context, int index) {
                                        return Padding(
                                          padding: const EdgeInsets.all(20),
                                          child: WidthWhiteBorderContainer(
                                            width: 300,
                                            radius: 10,
                                            widget1: Padding(
                                              padding:
                                                  const EdgeInsets.all(10.0),
                                              child: Row(
                                                children: [
                                                  Image.asset(
                                                    Images.demoBank,
                                                    scale: 1.5,
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 20.0),
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        NormalText(
                                                            size: 16,
                                                            color: ThemeColors
                                                                .white,
                                                            text: 'Bank Name',
                                                            weight: FontWeight
                                                                .w400),
                                                        const SizedBox5(),
                                                        NormalText(
                                                            size: 16,
                                                            color: ThemeColors
                                                                .white,
                                                            text:
                                                                'xxxxxxxx1234',
                                                            weight: FontWeight
                                                                .w400),
                                                        const SizedBox5(),
                                                        NormalText(
                                                            size: 16,
                                                            color: ThemeColors
                                                                .white,
                                                            text:
                                                                'Check Balance',
                                                            weight: FontWeight
                                                                .w400),
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
                                          ),
                                        );
                                      }),
                                ),
                                SizedBox(
                                  height: 150,
                                  child: ListView(
                                    scrollDirection: Axis.vertical,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(15),
                                        child: Row(
                                          children: [
                                            GestureDetector(
                                              onTap: () {},
                                              child: Image.asset(
                                                Images.unselected,
                                                scale: 1,
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 20.0),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  NormalText(
                                                      size: 16,
                                                      color: ThemeColors.white,
                                                      text: 'IMPS',
                                                      weight: FontWeight.w400),
                                                  const SizedBox5(),
                                                  NormalText(
                                                      size: 16,
                                                      color: ThemeColors.white,
                                                      text: 'IMPS Description',
                                                      weight: FontWeight.w400),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(15),
                                        child: Row(
                                          children: [
                                            GestureDetector(
                                              onTap: () {},
                                              child: Image.asset(
                                                Images.unselected,
                                                scale: 1,
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 20.0),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  NormalText(
                                                      size: 16,
                                                      color: ThemeColors.white,
                                                      text: 'NEFT',
                                                      weight: FontWeight.w400),
                                                  const SizedBox5(),
                                                  NormalText(
                                                      size: 16,
                                                      color: ThemeColors.white,
                                                      text: 'NEFT Description',
                                                      weight: FontWeight.w400),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(15),
                                        child: Row(
                                          children: [
                                            GestureDetector(
                                              onTap: () {},
                                              child: Image.asset(
                                                Images.unselected,
                                                scale: 1,
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 20.0),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  NormalText(
                                                      size: 16,
                                                      color: ThemeColors.white,
                                                      text: 'RTGS',
                                                      weight: FontWeight.w400),
                                                  const SizedBox5(),
                                                  NormalText(
                                                      size: 16,
                                                      color: ThemeColors.white,
                                                      text: 'RTGS Description',
                                                      weight: FontWeight.w400),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            )
                          : const SizedBox(
                              height: 0.0,
                            ),
                    ],
                  ),
                ),
                const SizedBox10(),
                WidthWhiteBorderContainer(
                  width: double.infinity,
                  radius: 12,
                  widget1: Column(
                    children: [
                      const SizedBox5(),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset(
                              Images.wallet2,
                              scale: 2.0,
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                NormalText(
                                    size: 20,
                                    color: ThemeColors.white,
                                    text: 'My3 Wallet',
                                    weight: FontWeight.w700),
                                NormalText(
                                    size: 16,
                                    color: ThemeColors.primary2,
                                    text: 'Balance: ₹30000',
                                    weight: FontWeight.normal),
                              ],
                            ),
                            const Spacer(),
                            isShow3
                                ? GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        isShow3 = false;
                                      });
                                    },
                                    child: Image.asset(Images.selected))
                                : GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        isShow3 = true;
                                      });
                                    },
                                    child: Image.asset(Images.unselected))
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox10(),
                WidthWhiteBorderContainer(
                  width: double.infinity,
                  radius: 12,
                  widget1: Column(
                    children: [
                      const SizedBox5(),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset(
                              Images.card,
                              scale: 3.0,
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            NormalText(
                                size: 20,
                                color: ThemeColors.white,
                                text: 'Credit Card',
                                weight: FontWeight.w700),
                            const Spacer(),
                            isShow4
                                ? GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        isShow4 = false;
                                      });
                                    },
                                    child: Image.asset(Images.selected))
                                : GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        isShow4 = true;
                                      });
                                    },
                                    child: Image.asset(Images.unselected))
                          ],
                        ),
                      ),
                      const SizedBox5(),
                      isShow4
                          ? Column(
                              children: [
                                SizedBox(
                                  height: 200,
                                  child: ListView.builder(
                                      scrollDirection: Axis.horizontal,
                                      itemCount: 3,
                                      itemBuilder:
                                          (BuildContext context, int index) {
                                        return Container(
                                          width: 350,
                                          height: 200,
                                          padding: const EdgeInsets.all(15.0),
                                          child: Stack(children: <Widget>[
                                            Card(
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(20.0),
                                              ),
                                              semanticContainer: true,
                                              color: ThemeColors.primary2,
                                              child: Image.asset(
                                                Images.cardimage,
                                                scale: 0.2,
                                              ),
                                            ),
                                            Align(
                                              alignment: AlignmentDirectional
                                                  .centerStart,
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(15.0),
                                                child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      NormalText(
                                                          size: 14,
                                                          color:
                                                              ThemeColors.grey,
                                                          text: 'Bank Name',
                                                          weight: FontWeight
                                                              .normal),
                                                      NormalText(
                                                          size: 16,
                                                          color:
                                                              ThemeColors.white,
                                                          text:
                                                              'XXXX XXXX XXXX 4568',
                                                          weight:
                                                              FontWeight.bold),
                                                      NormalText(
                                                          size: 16,
                                                          color:
                                                              ThemeColors.white,
                                                          text: '05/24',
                                                          weight: FontWeight
                                                              .normal),
                                                      Row(
                                                        children: [
                                                          NormalText(
                                                              size: 16,
                                                              color: ThemeColors
                                                                  .white,
                                                              text:
                                                                  'NAME ON CARD',
                                                              weight: FontWeight
                                                                  .normal),
                                                          const Spacer(),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .all(8.0),
                                                            child: Image.asset(
                                                                Images
                                                                    .mastercard),
                                                          )
                                                        ],
                                                      )
                                                    ]),
                                              ),
                                            )
                                          ]),
                                        );
                                      }),
                                ),
                                Align(
                                  alignment: AlignmentDirectional.bottomEnd,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 25, vertical: 15),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          NormalText(
                                              size: 14,
                                              color: ThemeColors.grey,
                                              text: 'Enter CVV',
                                              weight: FontWeight.normal),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          Container(
                                            padding: const EdgeInsets.all(8.0),
                                            color: ThemeColors.white,
                                            child: const Text('CVV'),
                                          )
                                        ]),
                                  ),
                                )
                              ],
                            )
                          : const SizedBox(
                              height: 0.0,
                            ),
                    ],
                  ),
                ),
                const SizedBox10(),
                WidthWhiteBorderContainer(
                  width: double.infinity,
                  radius: 12,
                  widget1: Column(
                    children: [
                      const SizedBox5(),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset(
                              Images.card,
                              scale: 3.0,
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            NormalText(
                                size: 20,
                                color: ThemeColors.white,
                                text: 'Debit Card',
                                weight: FontWeight.w700),
                            const Spacer(),
                            isShow5
                                ? GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        isShow5 = false;
                                      });
                                    },
                                    child: Image.asset(Images.selected))
                                : GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        isShow5 = true;
                                      });
                                    },
                                    child: Image.asset(Images.unselected))
                          ],
                        ),
                      ),
                      const SizedBox5(),
                      isShow5
                          ? Column(
                              children: [
                                SizedBox(
                                  height: 200,
                                  child: ListView.builder(
                                      scrollDirection: Axis.horizontal,
                                      itemCount: 3,
                                      itemBuilder:
                                          (BuildContext context, int index) {
                                        return Container(
                                          width: 350,
                                          height: 200,
                                          padding: const EdgeInsets.all(15.0),
                                          child: Stack(children: <Widget>[
                                            Card(
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(20.0),
                                              ),
                                              semanticContainer: true,
                                              color: ThemeColors.primary2,
                                              child: Image.asset(
                                                Images.cardimage,
                                                scale: 0.2,
                                              ),
                                            ),
                                            Align(
                                              alignment: AlignmentDirectional
                                                  .centerStart,
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(15.0),
                                                child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      NormalText(
                                                          size: 14,
                                                          color:
                                                              ThemeColors.grey,
                                                          text: 'Bank Name',
                                                          weight: FontWeight
                                                              .normal),
                                                      NormalText(
                                                          size: 16,
                                                          color:
                                                              ThemeColors.white,
                                                          text:
                                                              'XXXX XXXX XXXX 4568',
                                                          weight:
                                                              FontWeight.bold),
                                                      NormalText(
                                                          size: 16,
                                                          color:
                                                              ThemeColors.white,
                                                          text: '05/24',
                                                          weight: FontWeight
                                                              .normal),
                                                      Row(
                                                        children: [
                                                          NormalText(
                                                              size: 16,
                                                              color: ThemeColors
                                                                  .white,
                                                              text:
                                                                  'NAME ON CARD',
                                                              weight: FontWeight
                                                                  .normal),
                                                          const Spacer(),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .all(8.0),
                                                            child: Image.asset(
                                                                Images
                                                                    .mastercard),
                                                          )
                                                        ],
                                                      )
                                                    ]),
                                              ),
                                            )
                                          ]),
                                        );
                                      }),
                                ),
                                Align(
                                  alignment: AlignmentDirectional.bottomEnd,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 25, vertical: 15),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          NormalText(
                                              size: 14,
                                              color: ThemeColors.grey,
                                              text: 'Enter CVV',
                                              weight: FontWeight.normal),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          Container(
                                            padding: const EdgeInsets.all(8.0),
                                            color: ThemeColors.white,
                                            child: const Text('CVV'),
                                          )
                                        ]),
                                  ),
                                )
                              ],
                            )
                          : const SizedBox(
                              height: 0.0,
                            ),
                    ],
                  ),
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
                      // Navigator.of(context).push(MaterialPageRoute(
                      //     builder: (BuildContext context) =>
                      //         const CrossCheckPage()));
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
