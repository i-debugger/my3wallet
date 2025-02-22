import 'package:flutter/material.dart';
import '../../Widgets/buttons.dart';
import '../../Widgets/color.dart';
import '../../Widgets/images.dart';
import '../../Widgets/sizedbox.dart';
import '../../Widgets/text.dart';
import '../../Widgets/textbox.dart';
import '../../homescreen/dashboard.dart';
import '../../homescreen/Creditcard/crosscheckpage.dart';

class PayThroughCreditCard extends StatefulWidget {
  const PayThroughCreditCard({super.key});

  @override
  _PayThroughCreditCardState createState() => _PayThroughCreditCardState();
}

class _PayThroughCreditCardState extends State<PayThroughCreditCard> {
  @override
  Widget build(BuildContext context) {
    final searchController = TextEditingController();
    final amountController = TextEditingController();
    final purposeController = TextEditingController();

    return Scaffold(
        appBar: AppBar(
            backgroundColor: ThemeColors.themeblack,
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
        backgroundColor: ThemeColors.themeblack,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                NormalText(
                    size: 16,
                    color: ThemeColors.primary1,
                    text: 'Pay through Credit Card ',
                    weight: FontWeight.w700),
                NormalText(
                    size: 14,
                    color: ThemeColors.primary1,
                    text: 'Card No. XXXX XXXX XXXX 3456',
                    weight: FontWeight.w700),
                NormalText(
                    size: 14,
                    color: ThemeColors.primary1,
                    text: 'Payment Method: Credit Card',
                    weight: FontWeight.w700),
                const SizedBox20(),
                NormalText(
                    size: 20,
                    color: ThemeColors.primary1,
                    text: 'Choose Payee',
                    weight: FontWeight.w700),
                const SizedBox10(),
                NormalTextFieldWithOutValidator(
                    hintText: 'Search',
                    controller: searchController,
                    icon: const Icon(
                      Icons.search,
                      color: ThemeColors.grey,
                    )),
                const SizedBox10(),
                SizedBox(
                  height: 300,
                  child: ListView.builder(
                      itemCount: 4,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          color: ThemeColors.black,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              children: [
                                Image.asset(
                                  Images.demoBank,
                                  scale: 1.5,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      NormalText(
                                          size: 16,
                                          color: ThemeColors.white,
                                          text: 'Payee Name',
                                          weight: FontWeight.w700),
                                      const SizedBox5(),
                                      NormalText(
                                          size: 16,
                                          color: ThemeColors.white,
                                          text: 'xxxxxxxx1234',
                                          weight: FontWeight.w400),
                                      const SizedBox5(),
                                      NormalText(
                                          size: 16,
                                          color: ThemeColors.white,
                                          text: 'Bank Name',
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
                        );
                      }),
                ),
                const SizedBox20(),
                NormalText(
                    size: 20,
                    color: ThemeColors.primary1,
                    text: 'Enter Amount',
                    weight: FontWeight.w700),
                const SizedBox5(),
                NormalTextField(
                    hintText: 'Amount',
                    controller: amountController,
                    validatorText: 'Enter Amount',
                    icon: const Icon(
                      Icons.money,
                      color: ThemeColors.grey,
                    )),
                const SizedBox10(),
                NormalText(
                    size: 20,
                    color: ThemeColors.primary1,
                    text: 'Purpose',
                    weight: FontWeight.w700),
                const SizedBox5(),
                NormalTextField(
                    hintText: 'Purpose',
                    controller: purposeController,
                    validatorText: 'Enter Purpose',
                    icon: const Icon(
                      Icons.label_outline_rounded,
                      color: ThemeColors.grey,
                    )),
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
                              const CrossCheckPage()));
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
