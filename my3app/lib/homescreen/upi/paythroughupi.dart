import 'package:flutter/material.dart';
import '../../Widgets/sizedbox.dart';
import '../../homescreen/dashboard.dart';
import '../../Widgets/buttons.dart';
import '../../Widgets/color.dart';
import '../../Widgets/text.dart';
import '../../Widgets/textbox.dart';
import '../../homescreen/upi/choosepaytmentmode.dart';

class PayThroughUPI extends StatelessWidget {
  const PayThroughUPI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final searchController = TextEditingController();
    final amountController = TextEditingController();
    final purposeController = TextEditingController();

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
                    color: ThemeColors.primary2,
                    text: 'UPI Payment ',
                    weight: FontWeight.w700),
                NormalText(
                    size: 16,
                    color: ThemeColors.primary2,
                    text: 'Pay through: xyz@bankname',
                    weight: FontWeight.w700),
                const SizedBox20(),
                NormalText(
                    size: 20,
                    color: ThemeColors.primary2,
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
                      itemCount: 8,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: Container(
                            color: ThemeColors.black,
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Row(
                                children: [
                                  CircleAvatar(
                                    radius: 30,
                                    backgroundColor: ThemeColors.primary2,
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
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        NormalText(
                                            size: 16,
                                            color: ThemeColors.white,
                                            text: 'Shiba Sheen',
                                            weight: FontWeight.w700),
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
                        );
                      }),
                ),
                const SizedBox20(),
                NormalText(
                    size: 20,
                    color: ThemeColors.primary1,
                    text: 'Enter UPI ID',
                    weight: FontWeight.w700),
                const SizedBox5(),
                NormalTextField(
                    hintText: 'UPI ID',
                    controller: amountController,
                    validatorText: 'UPI ID',
                    icon: const Icon(
                      Icons.alternate_email,
                      color: ThemeColors.grey,
                    )),
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
                              const ChoosePaytmentMode()));
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
