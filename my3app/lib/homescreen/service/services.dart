import 'package:flutter/material.dart';
import '../../Widgets/color.dart';
import '../../Widgets/images.dart';
import '../../Widgets/sizedbox.dart';
import '../../Widgets/text.dart';
import '../../Widgets/textbox.dart';
import '../../homescreen/dashboard.dart';


class Services extends StatefulWidget {
  const Services({Key? key}) : super(key: key);

  @override
  State<Services> createState() => _ServicesState();
}

class _ServicesState extends State<Services> {
  bool isShow0 = false;
  bool isShow1 = false;
  bool isShow2 = false;
  bool isShow3 = false;
  bool isShow4 = false;
  bool isShow5 = false;
  final searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
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
                  color: ThemeColors.primary2,
                  text: 'Back to Dashboard',
                  weight: FontWeight.w500),
            ),
          ]),
      backgroundColor: ThemeColors.primary5,
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.only(bottom: 20.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: NormalTextFieldWithOutValidator(
                hintText: 'Search',
                controller: searchController,
                icon: const Icon(
                  Icons.search,
                  color: ThemeColors.grey,
                ),
              ),
            ),
            Container(
              width: double.infinity,
              color: ThemeColors.ellipse12,
              child: Column(
                children: [
                  const SizedBox10(),
                  isShow0
                      ? Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                GestureDetector(
                                  onTap: () {},
                                  child: Column(
                                    children: [
                                      Image.asset(
                                        Images.calculator,
                                        scale: 3.0,
                                      ),
                                      NormalText(
                                          size: 14,
                                          color: ThemeColors.white,
                                          text: 'Check EMIs',
                                          weight: FontWeight.w500),
                                    ],
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {},
                                  child: Column(
                                    children: [
                                      Image.asset(
                                        Images.myFd,
                                        scale: 3.0,
                                      ),
                                      NormalText(
                                          size: 14,
                                          color: ThemeColors.white,
                                          text: 'My FDs',
                                          weight: FontWeight.w500),
                                    ],
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {},
                                  child: Column(
                                    children: [
                                      Image.asset(
                                        Images.flyingMoney,
                                        scale: 3.0,
                                      ),
                                      NormalText(
                                          size: 14,
                                          color: ThemeColors.white,
                                          text: 'Pay',
                                          weight: FontWeight.w500),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox10(),
                          ],
                        )
                      : const SizedBox(
                          height: 0.0,
                        ),
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
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          NormalText(
                              size: 14,
                              color: ThemeColors.grey,
                              text: 'No search result',
                              weight: FontWeight.w400),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox10(),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(width: 3, color: ThemeColors.white),
              ),
              child: Column(
                children: [
                  const SizedBox5(),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        NormalText(
                            size: 16,
                            color: ThemeColors.white,
                            text: 'Make Payments',
                            weight: FontWeight.w700),
                        isShow1
                            ? IconButton(
                                onPressed: () {
                                  setState(() {
                                    isShow1 = false;
                                  });
                                },
                                icon: const Icon(
                                  Icons.keyboard_arrow_up,
                                  color: ThemeColors.white,
                                  size: 35,
                                ),
                              )
                            : IconButton(
                                onPressed: () {
                                  setState(() {
                                    isShow1 = true;
                                  });
                                },
                                icon: const Icon(
                                  Icons.keyboard_arrow_down_rounded,
                                  color: ThemeColors.white,
                                  size: 35,
                                ),
                              )
                      ],
                    ),
                  ),
                  const SizedBox5(),
                  isShow1
                      ? Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 15, right: 15),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Column(
                                    children: [
                                      GestureDetector(
                                        onTap: () {},
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Image.asset(
                                              Images.flyingMoney,
                                              scale: 3,
                                            ),
                                            NormalText(
                                                size: 14,
                                                color: ThemeColors.white,
                                                text: 'Pay',
                                                weight: FontWeight.w500),
                                          ],
                                        ),
                                      ),
                                      const SizedBox10(),
                                      GestureDetector(
                                        onTap: () {
                                          // Navigator.of(context).push(
                                          //     MaterialPageRoute(
                                          //         builder: (BuildContext
                                          //                 context) =>
                                          //             const PayThroughNetBanking()));
                                        },
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Image.asset(
                                              Images.mobileBanking,
                                              scale: 3,
                                            ),
                                            NormalText(
                                                size: 14,
                                                color: ThemeColors.white,
                                                text: 'Net',
                                                weight: FontWeight.w500),
                                            NormalText(
                                                size: 14,
                                                color: ThemeColors.white,
                                                text: 'Banking',
                                                weight: FontWeight.w500),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  const Spacer(),
                                  Column(
                                    children: [
                                      GestureDetector(
                                        onTap: () {},
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Image.asset(
                                              Images.wallet,
                                              scale: 3,
                                            ),
                                            NormalText(
                                                size: 14,
                                                color: ThemeColors.white,
                                                text: 'Add Funds',
                                                weight: FontWeight.w500),
                                          ],
                                        ),
                                      ),
                                      const SizedBox10(),
                                      GestureDetector(
                                        onTap: () {
                                          // Navigator.of(context).push(
                                          //     MaterialPageRoute(
                                          //         builder:
                                          //             (BuildContext context) =>
                                          //                 const PayThroughUPI()));
                                        },
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Image.asset(
                                              Images.upi,
                                              scale: 3,
                                            ),
                                            NormalText(
                                                size: 14,
                                                color: ThemeColors.white,
                                                text: 'UPI',
                                                weight: FontWeight.w500),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  const Spacer(),
                                  Column(
                                    children: [
                                      GestureDetector(
                                        onTap: () {},
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Image.asset(
                                              Images.product,
                                              scale: 3,
                                            ),
                                            NormalText(
                                                size: 14,
                                                color: ThemeColors.white,
                                                text: 'Pay Bills',
                                                weight: FontWeight.w500),
                                          ],
                                        ),
                                      ),
                                      const SizedBox10(),
                                      GestureDetector(
                                        onTap: () {
                                          // Navigator.of(context).push(
                                          //     MaterialPageRoute(
                                          //         builder: (BuildContext
                                          //                 context) =>
                                          //             const My3Wallet()));
                                        },
                                        child: Column(
                                          children: [
                                            Image.asset(
                                              Images.wallet2,
                                              scale: 3,
                                            ),
                                            NormalText(
                                                size: 14,
                                                color: ThemeColors.white,
                                                text: 'My3 Wallet',
                                                weight: FontWeight.w500),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 15, right: 15, bottom: 20),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  const Spacer(),
                                  GestureDetector(
                                    onTap: () {},
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Image.asset(
                                          Images.card,
                                          scale: 4.0,
                                        ),
                                        NormalText(
                                            size: 14,
                                            color: ThemeColors.white,
                                            text: 'Credit Card',
                                            weight: FontWeight.w500),
                                      ],
                                    ),
                                  ),
                                  const Spacer(),
                                  GestureDetector(
                                    onTap: () {
                                      // Navigator.of(context).push(
                                      //     MaterialPageRoute(
                                      //         builder: (BuildContext
                                      //                 context) =>
                                      //             const PayThroughDebitCard()));
                                    },
                                    child: Column(
                                      children: [
                                        Image.asset(
                                          Images.card,
                                          scale: 4.0,
                                        ),
                                        NormalText(
                                            size: 14,
                                            color: ThemeColors.white,
                                            text: 'Debit Card',
                                            weight: FontWeight.w500),
                                      ],
                                    ),
                                  ),
                                  const Spacer()
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
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(width: 3, color: ThemeColors.white),
              ),
              child: Column(
                children: [
                  const SizedBox5(),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        NormalText(
                            size: 16,
                            color: ThemeColors.white,
                            text: 'Bank Account Management',
                            weight: FontWeight.w700),
                        isShow2
                            ? IconButton(
                                onPressed: () {
                                  setState(() {
                                    isShow2 = false;
                                  });
                                },
                                icon: const Icon(
                                  Icons.keyboard_arrow_up,
                                  color: ThemeColors.white,
                                  size: 35,
                                ),
                              )
                            : IconButton(
                                onPressed: () {
                                  setState(() {
                                    isShow2 = true;
                                  });
                                },
                                icon: const Icon(
                                  Icons.keyboard_arrow_down_rounded,
                                  color: ThemeColors.white,
                                  size: 35,
                                ),
                              )
                      ],
                    ),
                  ),
                  const SizedBox5(),
                  isShow2
                      ? Padding(
                          padding: const EdgeInsets.only(
                              left: 15, right: 15, bottom: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                children: [
                                  Image.asset(
                                    Images.bank,
                                    scale: 2.5,
                                  ),
                                  NormalText(
                                      size: 14,
                                      color: ThemeColors.white,
                                      text: 'Add Accounts',
                                      weight: FontWeight.w500),
                                ],
                              ),
                              Column(
                                children: [
                                  Image.asset(
                                    Images.addAccount,
                                    scale: 2.5,
                                  ),
                                  NormalText(
                                      size: 14,
                                      color: ThemeColors.white,
                                      text: 'Add Account',
                                      weight: FontWeight.w500),
                                ],
                              ),
                              Column(
                                children: [
                                  Image.asset(
                                    Images.my3account,
                                    scale: 2.5,
                                  ),
                                  NormalText(
                                      size: 14,
                                      color: ThemeColors.white,
                                      text: 'My3',
                                      weight: FontWeight.w500),
                                  NormalText(
                                      size: 14,
                                      color: ThemeColors.white,
                                      text: 'Account',
                                      weight: FontWeight.w500),
                                ],
                              ),
                            ],
                          ),
                        )
                      : const SizedBox(
                          height: 0.0,
                        ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(width: 3, color: ThemeColors.white),
              ),
              child: Column(
                children: [
                  const SizedBox5(),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        NormalText(
                            size: 16,
                            color: ThemeColors.white,
                            text: 'Credit Card Management',
                            weight: FontWeight.w700),
                        isShow3
                            ? IconButton(
                                onPressed: () {
                                  setState(() {
                                    isShow3 = false;
                                  });
                                },
                                icon: const Icon(
                                  Icons.keyboard_arrow_up,
                                  color: ThemeColors.white,
                                  size: 35,
                                ),
                              )
                            : IconButton(
                                onPressed: () {
                                  setState(() {
                                    isShow3 = true;
                                  });
                                },
                                icon: const Icon(
                                  Icons.keyboard_arrow_down_rounded,
                                  color: ThemeColors.white,
                                  size: 35,
                                ),
                              )
                      ],
                    ),
                  ),
                  const SizedBox5(),
                  isShow3
                      ? Padding(
                          padding: const EdgeInsets.only(
                              left: 15, right: 15, bottom: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                children: [
                                  GestureDetector(
                                    onTap: () {},
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Image.asset(
                                          Images.cc,
                                          scale: 3,
                                        ),
                                        NormalText(
                                            size: 14,
                                            color: ThemeColors.white,
                                            text: 'My Credit',
                                            weight: FontWeight.w500),
                                        NormalText(
                                            size: 14,
                                            color: ThemeColors.white,
                                            text: 'Card',
                                            weight: FontWeight.w500),
                                      ],
                                    ),
                                  ),
                                  const SizedBox5(),
                                  GestureDetector(
                                    onTap: () {},
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Image.asset(
                                          Images.meter,
                                          scale: 3,
                                        ),
                                        NormalText(
                                            size: 14,
                                            color: ThemeColors.white,
                                            text: 'Check',
                                            weight: FontWeight.w500),
                                        NormalText(
                                            size: 14,
                                            color: ThemeColors.white,
                                            text: 'Score',
                                            weight: FontWeight.w500),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  GestureDetector(
                                    onTap: () {},
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Image.asset(
                                          Images.cc2,
                                          scale: 3,
                                        ),
                                        NormalText(
                                            size: 14,
                                            color: ThemeColors.white,
                                            text: 'Add Credit',
                                            weight: FontWeight.w500),
                                        NormalText(
                                            size: 14,
                                            color: ThemeColors.white,
                                            text: 'Card',
                                            weight: FontWeight.w500),
                                      ],
                                    ),
                                  ),
                                  const SizedBox5(),
                                  GestureDetector(
                                    onTap: () {},
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Image.asset(
                                          Images.calculator,
                                          scale: 3,
                                        ),
                                        NormalText(
                                            size: 14,
                                            color: ThemeColors.white,
                                            text: 'Check EMIs',
                                            weight: FontWeight.w500),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  GestureDetector(
                                    onTap: () {},
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Image.asset(
                                          Images.statement,
                                          scale: 3,
                                        ),
                                        NormalText(
                                            size: 14,
                                            color: ThemeColors.white,
                                            text: 'CC',
                                            weight: FontWeight.w500),
                                        NormalText(
                                            size: 14,
                                            color: ThemeColors.white,
                                            text: 'Statement',
                                            weight: FontWeight.w500),
                                      ],
                                    ),
                                  ),
                                  const SizedBox5(),
                                  GestureDetector(
                                    onTap: () {},
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Image.asset(Images.report, scale: 2.3),
                                        NormalText(
                                            size: 14,
                                            color: ThemeColors.white,
                                            text: 'Reports',
                                            weight: FontWeight.w500),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )
                      : const SizedBox(
                          height: 0.0,
                        ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(width: 3, color: ThemeColors.white),
              ),
              child: Column(
                children: [
                  const SizedBox5(),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        NormalText(
                            size: 16,
                            color: ThemeColors.white,
                            text: 'Fixed Deposit Management',
                            weight: FontWeight.w700),
                        isShow4
                            ? IconButton(
                                onPressed: () {
                                  setState(() {
                                    isShow4 = false;
                                  });
                                },
                                icon: const Icon(
                                  Icons.keyboard_arrow_up,
                                  color: ThemeColors.white,
                                  size: 35,
                                ),
                              )
                            : IconButton(
                                onPressed: () {
                                  setState(() {
                                    isShow4 = true;
                                  });
                                },
                                icon: const Icon(
                                  Icons.keyboard_arrow_down_rounded,
                                  color: ThemeColors.white,
                                  size: 35,
                                ),
                              )
                      ],
                    ),
                  ),
                  const SizedBox5(),
                  isShow4
                      ? Padding(
                          padding: const EdgeInsets.only(
                              left: 15, right: 15, bottom: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                children: [
                                  Image.asset(
                                    Images.myFd,
                                    scale: 2.5,
                                  ),
                                  NormalText(
                                      size: 14,
                                      color: ThemeColors.white,
                                      text: 'My FDs',
                                      weight: FontWeight.w500),
                                ],
                              ),
                              Column(
                                children: [
                                  Image.asset(
                                    Images.newFd,
                                    scale: 2.5,
                                  ),
                                  NormalText(
                                      size: 14,
                                      color: ThemeColors.white,
                                      text: 'New FD',
                                      weight: FontWeight.w500),
                                ],
                              ),
                            ],
                          ),
                        )
                      : const SizedBox(
                          height: 0.0,
                        ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(width: 3, color: ThemeColors.white),
              ),
              child: Column(
                children: [
                  const SizedBox5(),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        NormalText(
                            size: 16,
                            color: ThemeColors.white,
                            text: 'Bills ,Loans and Offers',
                            weight: FontWeight.w700),
                        isShow5
                            ? IconButton(
                                onPressed: () {
                                  setState(() {
                                    isShow5 = false;
                                  });
                                },
                                icon: const Icon(
                                  Icons.keyboard_arrow_up,
                                  color: ThemeColors.white,
                                  size: 35,
                                ),
                              )
                            : IconButton(
                                onPressed: () {
                                  setState(() {
                                    isShow5 = true;
                                  });
                                },
                                icon: const Icon(
                                  Icons.keyboard_arrow_down_rounded,
                                  color: ThemeColors.white,
                                  size: 35,
                                ),
                              )
                      ],
                    ),
                  ),
                  const SizedBox5(),
                  isShow5
                      ? Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 15, right: 15),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  GestureDetector(
                                    onTap: () {},
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Image.asset(
                                          Images.bill,
                                          scale: 2.5,
                                        ),
                                        NormalText(
                                            size: 14,
                                            color: ThemeColors.white,
                                            text: 'Pay Bills',
                                            weight: FontWeight.w500),
                                      ],
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {},
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Image.asset(
                                          Images.mobileRecharge,
                                          scale: 2.5,
                                        ),
                                        NormalText(
                                            size: 14,
                                            color: ThemeColors.white,
                                            text: '   Mobile',
                                            weight: FontWeight.w500),
                                        NormalText(
                                            size: 14,
                                            color: ThemeColors.white,
                                            text: 'Recharge',
                                            weight: FontWeight.w500),
                                      ],
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {},
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Image.asset(
                                          Images.interest,
                                          scale: 2.5,
                                        ),
                                        NormalText(
                                            size: 14,
                                            color: ThemeColors.white,
                                            text: 'Loans',
                                            weight: FontWeight.w500),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 10, left: 15, right: 15, bottom: 20),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  const Spacer(),
                                  GestureDetector(
                                    onTap: () {},
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Image.asset(Images.offers, scale: 2.5),
                                        NormalText(
                                            size: 14,
                                            color: ThemeColors.white,
                                            text: 'Offers',
                                            weight: FontWeight.w500),
                                      ],
                                    ),
                                  ),
                                  const Spacer(),
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
          ],
        ),
      )),
    );
  }
}
