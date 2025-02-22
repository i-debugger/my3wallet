import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import '../../homescreen/creditcard/paythroughcreditcard.dart';
import '../../homescreen/debitcard/paythroughdebitcard.dart';
import '../../homescreen/loans/loans.dart';
import '../../homescreen/my3wallet/my3wallet.dart';
import '../../homescreen/netbanking/paythroughnetbanking.dart';
import '../../homescreen/pay/paythroughpay.dart';
import '../../homescreen/profile/profile.dart';

import '../../homescreen/service/services.dart';
import '../../Widgets/buttons.dart';
import '../../Widgets/color.dart';
import '../../Widgets/images.dart';
import '../../Widgets/sizedbox.dart';
import '../../Widgets/text.dart';
import '../../homescreen/offers/offers.dart';
import '../../homescreen/scanqr/scanqr.dart';
import '../../homescreen/upi/paythroughupi.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({super.key});

  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard>
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

  var carouselOptions = CarouselOptions(
    enableInfiniteScroll: false,
    height: 250,
    viewportFraction: 1,
  );

  var boxDecoration = BoxDecoration(
      border: Border.all(width: 3, color: ThemeColors.white),
      borderRadius: const BorderRadius.all(Radius.circular(20)));

  Widget _buldCard(context, index, realIdx) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Card(
        color: ThemeColors.ellipse13,
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
          side: const BorderSide(color: ThemeColors.primary1, width: 3.0),
        ),
        semanticContainer: true,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  NormalText(
                      size: 18,
                      color: ThemeColors.primary1,
                      text: 'My Account',
                      weight: FontWeight.w600),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: CircleAvatar(
                      radius: 25,
                      backgroundColor: ThemeColors.black,
                      child: Image.asset(Images.logo),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                child: (index == 1)
                    ? Center(
                        child: Column(
                          children: [
                            NormalText(
                                size: 18,
                                color: ThemeColors.primary1,
                                text: '1234 1234 5678',
                                weight: FontWeight.w600),
                            BorderButton(
                              textName: 'View Balance',
                              color: ThemeColors.primary1,
                              onPressed: () {},
                              width: MediaQuery.of(context).size.width / 2.3,
                              weight: FontWeight.w600,
                              size: 14,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                NormalText(
                                    size: 18,
                                    color: ThemeColors.primary1,
                                    text: 'UPI Id:',
                                    weight: FontWeight.w400),
                                NormalText(
                                    size: 18,
                                    color: ThemeColors.primary1,
                                    text: 'abcd@bank',
                                    weight: FontWeight.w400),
                              ],
                            ),
                          ],
                        ),
                      )
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    width: 3, color: ThemeColors.primary1),
                                shape: BoxShape.circle),
                            child: Image.asset(
                                (index == 0) ? Images.vector : Images.meter,
                                scale: 2,
                                color: ThemeColors.primary1),
                          ),
                          BorderButton(
                            textName: (index == 0)
                                ? 'View Total Savings '
                                : 'View Cibil Score ',
                            color: ThemeColors.primary1,
                            onPressed: () {},
                            width: MediaQuery.of(context).size.width / 2.3,
                            weight: FontWeight.w600,
                            size: 14,
                          ),
                        ],
                      )),
            (index == 1) ? const SizedBox5() : const SizedBox20(),
            const Divider(
              color: ThemeColors.primary1,
              thickness: 3,
            ),
            Row(
              children: [
                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 0.0, bottom: 10.0),
                    child: NormalText(
                        size: 14,
                        color: ThemeColors.primary1,
                        text: 'Statements',
                        weight: FontWeight.w600)),
                const SizedBox(
                    height: 40,
                    child: VerticalDivider(
                      thickness: 3,
                      color: ThemeColors.primary1,
                    )),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 0.0, bottom: 10.0),
                  child: NormalText(
                      size: 14,
                      color: ThemeColors.primary1,
                      text: 'Debit cards',
                      weight: FontWeight.w600),
                ),
                const SizedBox(
                    height: 40,
                    child: VerticalDivider(
                      thickness: 3,
                      color: ThemeColors.primary1,
                    )),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 0.0, bottom: 10.0),
                  child: NormalText(
                      size: 14,
                      color: ThemeColors.primary1,
                      text: 'Spends',
                      weight: FontWeight.w600),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: ThemeColors.ellipse13,
          body: Stack(
            alignment: AlignmentDirectional.center,
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 12),
                    child: SizedBox(
                      height: 260.0,
                      child: CarouselSlider.builder(
                          itemCount: 3,
                          options: carouselOptions,
                          itemBuilder: _buldCard),
                    ),
                  ),
                ],
              ),
              DraggableScrollableSheet(
                initialChildSize: 0.62,
                minChildSize: 0.62,
                maxChildSize: 0.62,
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
                        child: Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(top: 15, bottom: 20),
                            child: Image.asset(Images.arrow,
                                scale: 2, color: ThemeColors.primary1),
                          ),
                          Container(
                            width: double.infinity,
                            decoration: boxDecoration,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: NormalText(
                                      size: 18,
                                      color: ThemeColors.white,
                                      text: 'Make Payments',
                                      weight: FontWeight.w600),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 15, right: 15),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Column(
                                        children: [
                                          GestureDetector(
                                            onTap: () {
                                              Navigator.of(context).push(
                                                  MaterialPageRoute(
                                                      builder: (BuildContext
                                                              context) =>
                                                          const PayThroughPay()));
                                            },
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Image.asset(
                                                  Images.flyingMoney,
                                                  scale: 2.5,
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
                                              Navigator.of(context).push(
                                                  MaterialPageRoute(
                                                      builder: (BuildContext
                                                              context) =>
                                                          const PayThroughNetBanking()));
                                            },
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Image.asset(
                                                  Images.mobileBanking,
                                                  scale: 2.5,
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
                                                  scale: 2.5,
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
                                              Navigator.of(context).push(
                                                  MaterialPageRoute(
                                                      builder: (BuildContext
                                                              context) =>
                                                          const PayThroughUPI()));
                                            },
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Image.asset(
                                                  Images.upi,
                                                  scale: 2.5,
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
                                          const SizedBox10(),
                                          GestureDetector(
                                            onTap: () {
                                              Navigator.of(context).push(
                                                  MaterialPageRoute(
                                                      builder: (BuildContext
                                                              context) =>
                                                          const My3Wallet()));
                                            },
                                            child: Column(
                                              children: [
                                                Image.asset(
                                                  Images.wallet2,
                                                  scale: 2.5,
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
                                      top: 10, left: 15, right: 15, bottom: 20),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      const Spacer(),
                                      GestureDetector(
                                        onTap: () {
                                          Navigator.of(context).push(
                                              MaterialPageRoute(
                                                  builder: (BuildContext
                                                          context) =>
                                                      const PayThroughCreditCard()));
                                        },
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Image.asset(
                                              Images.card,
                                              scale: 3.0,
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
                                          Navigator.of(context).push(
                                              MaterialPageRoute(
                                                  builder: (BuildContext
                                                          context) =>
                                                      const PayThroughDebitCard()));
                                        },
                                        child: Column(
                                          children: [
                                            Image.asset(
                                              Images.card,
                                              scale: 3.0,
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
                            ),
                          ),
                          const SizedBox20(),
                          Container(
                            width: double.infinity,
                            decoration: boxDecoration,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: NormalText(
                                      size: 18,
                                      color: ThemeColors.white,
                                      text: 'Fixed Deposit Management',
                                      weight: FontWeight.w600),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 15, right: 15, bottom: 20),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Column(
                                        children: [
                                          Image.asset(
                                            Images.myFd,
                                            scale: 2.0,
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
                                            scale: 2.0,
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
                                ),
                              ],
                            ),
                          ),
                          const SizedBox20(),
                          Container(
                            width: double.infinity,
                            decoration: boxDecoration,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: NormalText(
                                      size: 18,
                                      color: ThemeColors.white,
                                      text: 'Bank Account Management',
                                      weight: FontWeight.w600),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 15, right: 15, bottom: 20),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
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
                                ),
                              ],
                            ),
                          ),
                          const SizedBox20(),
                          Container(
                            width: double.infinity,
                            decoration: boxDecoration,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: NormalText(
                                      size: 18,
                                      color: ThemeColors.white,
                                      text: 'Credit Card Management',
                                      weight: FontWeight.w600),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 15, right: 15, bottom: 20),
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
                                                  Images.cc,
                                                  scale: 2.5,
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
                                                  scale: 2.7,
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
                                                  scale: 2.5,
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
                                                  scale: 2.5,
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
                                                  scale: 2.5,
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
                                                Image.asset(Images.report,
                                                    scale: 2.3),
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
                                ),
                              ],
                            ),
                          ),
                          const SizedBox20(),
                          Container(
                            width: double.infinity,
                            decoration: boxDecoration,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: NormalText(
                                      size: 18,
                                      color: ThemeColors.white,
                                      text: 'Other Services',
                                      weight: FontWeight.w600),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 15, right: 15, bottom: 20),
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
                                        onTap: () {
                                          Navigator.of(context).push(
                                              MaterialPageRoute(
                                                  builder:
                                                      (BuildContext context) =>
                                                          const Loans()));
                                        },
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
                                            Image.asset(Images.offers,
                                                scale: 2.5),
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
                            ),
                          ),
                          const SizedBox20(),
                          Image.asset(
                            Images.logo,
                            scale: 2.0,
                          ),
                        ],
                      ),
                    )),
                  );
                },
              ),
            ],
          ),
          bottomNavigationBar: Container(
            height: 66.0,
            color: ThemeColors.ellipse13,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const Profile()));
                    },
                    child: Column(
                      children: [
                        Image.asset(Images.user,
                            scale: 1.5, color: ThemeColors.primary2),
                        const SizedBox5(),
                        NormalText(
                            size: 12,
                            color: ThemeColors.primary2,
                            text: 'My Profile',
                            weight: FontWeight.w400),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const ScanQR()));
                    },
                    child: Column(
                      children: [
                        Image.asset(Images.netBanking,
                            scale: 1.5, color: ThemeColors.primary2),
                        const SizedBox5(),
                        NormalText(
                            size: 12,
                            color: ThemeColors.primary2,
                            text: 'Scan QR',
                            weight: FontWeight.w400),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const Services()));
                    },
                    child: Column(
                      children: [
                        Image.asset(Images.service,
                            scale: 1.5, color: ThemeColors.primary2),
                        const SizedBox5(),
                        NormalText(
                            size: 12,
                            color: ThemeColors.primary2,
                            text: 'Services',
                            weight: FontWeight.w400),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const Offers()));
                    },
                    child: Column(
                      children: [
                        Image.asset(Images.offer,
                            scale: 1.5, color: ThemeColors.primary2),
                        NormalText(
                            size: 12,
                            color: ThemeColors.primary2,
                            text: 'Offers',
                            weight: FontWeight.w400),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}