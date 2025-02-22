import 'package:flutter/material.dart';
import '../../Widgets/buttons.dart';
import '../../Widgets/color.dart';
import '../../Widgets/container.dart';
import '../../Widgets/images.dart';
import '../../Widgets/sizedbox.dart';
import '../../Widgets/text.dart';
import '../../Widgets/textbox.dart';
import '../../homescreen/dashboard.dart';
import '../../homescreen/my3wallet/crosscheckpage.dart';
import '../../homescreen/my3wallet/paythroughwallet.dart';

class My3Wallet extends StatefulWidget {
  const My3Wallet({super.key});

  @override
  _My3WalletState createState() => _My3WalletState();
}

class _My3WalletState extends State<My3Wallet>
    with SingleTickerProviderStateMixin {
  bool isCvvFocused = false;
  bool useBackgroundImage = true;
  OutlineInputBorder? border;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final amountController = TextEditingController();
  late TabController controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(vsync: this, length: 3, initialIndex: 0);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

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
                    color: ThemeColors.primary1,
                    text: 'Back to Dashboard',
                    weight: FontWeight.w500),
              ),
            ]),
        backgroundColor: ThemeColors.primary5,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Image.asset(
                      Images.logo,
                      scale: 4.5,
                    ),
                    const SizedBox20(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        NormalText(
                            size: 20,
                            color: ThemeColors.primary1,
                            text: 'My3 Wallet',
                            weight: FontWeight.w700),
                        NormalText(
                            size: 16,
                            color: ThemeColors.primary1,
                            text: '1234567890',
                            weight: FontWeight.w400),
                      ],
                    ),
                  ],
                ),
                const SizedBox20(),
                NormalText(
                    size: 18,
                    color: ThemeColors.primary1,
                    text: 'Balance: ₹1234',
                    weight: FontWeight.w400),
                const SizedBox20(),
                BorderButton(
                    textName: 'Pay by My3 wallet',
                    color: ThemeColors.primary1,
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const PayThroughWallet()));
                    },
                    width: double.infinity,
                    weight: FontWeight.w700,
                    size: 18),
                const SizedBox30(),
                NormalText(
                    size: 14,
                    color: ThemeColors.primary1,
                    text: 'Add Money',
                    weight: FontWeight.w400),
                const SizedBox5(),
                NormalTextField(
                  hintText: 'Amount',
                  controller: amountController,
                  validatorText: 'Enter Amount',
                  icon: const Icon(
                    Icons.keyboard_arrow_up,
                    color: ThemeColors.grey,
                  ),
                ),
                const SizedBox5(),
                NormalText(
                    size: 12,
                    color: ThemeColors.grey,
                    text: 'Limit to how much money can be added',
                    weight: FontWeight.w400),
                const SizedBox20(),
                NormalText(
                    size: 14,
                    color: ThemeColors.primary1,
                    text: 'Add money through',
                    weight: FontWeight.w400),
                const SizedBox15(),
                SizedBox(
                  height: 50.0,
                  child: DefaultTabController(
                    length: 3,
                    child: TabBar(
                      indicatorColor: ThemeColors.primary1,
                      indicatorWeight: 1,
                      labelPadding: const EdgeInsets.all(12),
                      unselectedLabelColor: ThemeColors.ellipse13,
                      controller: controller,
                      labelColor: ThemeColors.primary1,
                      tabs: const [
                        Tab(text: 'UPI'),
                        Tab(text: 'DEBIT CARD'),
                        Tab(text: 'CREDIT CARD'),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: SizedBox(
                    height: 200.0,
                    child: TabBarView(
                      controller: controller,
                      children: [
                        SizedBox(
                          height: 300,
                          child: ListView.builder(
                              itemCount: 2,
                              itemBuilder: (BuildContext context, int index) {
                                return Padding(
                                    padding:
                                        const EdgeInsets.only(bottom: 20.0),
                                    child: WidthWhiteBorderContainer(
                                        widget1: Padding(
                                          padding: const EdgeInsets.all(20.0),
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
                                                            FontWeight.w700),
                                                    NormalText(
                                                        size: 16,
                                                        color:
                                                            ThemeColors.white,
                                                        text: 'XXXXXXXXXXX7531',
                                                        weight:
                                                            FontWeight.w400),
                                                    NormalText(
                                                        size: 14,
                                                        color: ThemeColors
                                                            .primary2,
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
                                        width: double.infinity,
                                        radius: 20));
                              }),
                        ),
                        SizedBox(
                          height: 300,
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: 3,
                              itemBuilder: (BuildContext context, int index) {
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
                                      alignment:
                                          AlignmentDirectional.centerStart,
                                      child: Padding(
                                        padding: const EdgeInsets.all(15.0),
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              NormalText(
                                                  size: 14,
                                                  color: ThemeColors.grey,
                                                  text: 'Bank Name',
                                                  weight: FontWeight.normal),
                                              NormalText(
                                                  size: 16,
                                                  color: ThemeColors.white,
                                                  text: 'XXXX XXXX XXXX 4568',
                                                  weight: FontWeight.bold),
                                              NormalText(
                                                  size: 16,
                                                  color: ThemeColors.white,
                                                  text: '05/24',
                                                  weight: FontWeight.normal),
                                              Row(
                                                children: [
                                                  NormalText(
                                                      size: 16,
                                                      color: ThemeColors.white,
                                                      text: 'NAME ON CARD',
                                                      weight:
                                                          FontWeight.normal),
                                                  const Spacer(),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: Image.asset(
                                                        Images.mastercard),
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
                        SizedBox(
                          height: 300,
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: 3,
                              itemBuilder: (BuildContext context, int index) {
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
                                      alignment:
                                          AlignmentDirectional.centerStart,
                                      child: Padding(
                                        padding: const EdgeInsets.all(15.0),
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              NormalText(
                                                  size: 14,
                                                  color: ThemeColors.grey,
                                                  text: 'Bank Name',
                                                  weight: FontWeight.normal),
                                              NormalText(
                                                  size: 16,
                                                  color: ThemeColors.white,
                                                  text: 'XXXX XXXX XXXX 4568',
                                                  weight: FontWeight.bold),
                                              NormalText(
                                                  size: 16,
                                                  color: ThemeColors.white,
                                                  text: '05/24',
                                                  weight: FontWeight.normal),
                                              Row(
                                                children: [
                                                  NormalText(
                                                      size: 16,
                                                      color: ThemeColors.white,
                                                      text: 'NAME ON CARD',
                                                      weight:
                                                          FontWeight.normal),
                                                  const Spacer(),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: Image.asset(
                                                        Images.mastercard),
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
                      ],
                    ),
                  ),
                ),
                const SizedBox20(),
              ],
            ),
          ),
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SizedBox(
              width: MediaQuery.of(context).size.width / 2.2,
              child: BorderButton(
                textName: 'ADD MONEY',
                color: ThemeColors.primary1,
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const CrossCheckPage()));
                },
                width: double.infinity,
                weight: FontWeight.w700,
                size: 18,
              )),
        ));
  }
}
