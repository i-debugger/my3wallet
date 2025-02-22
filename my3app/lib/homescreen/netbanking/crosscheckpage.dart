import 'package:flutter/material.dart';
import '../../Widgets/buttons.dart';
import '../../Widgets/color.dart';
import '../../Widgets/text.dart';
import '../../Widgets/textbox.dart';
import '../../homescreen/dashboard.dart';
import '../../homescreen/transactionsuccess/successfullnetbanking.dart';


class CrossCheckPage extends StatelessWidget {
  const CrossCheckPage({super.key});

  @override
  Widget build(BuildContext context) {
    final otpController = TextEditingController();

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
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            NormalText(
                size: 20,
                color: ThemeColors.primary1,
                text: 'Confirm Transaction',
                weight: FontWeight.w700),
            const SizedBox(
              height: 10.0,
            ),
            const Text(
              'Debit Account Details:',
              style: TextStyle(
                fontSize: 18,
                color: ThemeColors.grey,
                decoration: TextDecoration.underline,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            NormalText(
                size: 16,
                color: ThemeColors.grey,
                text: 'Bank Name : XYZ Bank',
                weight: FontWeight.w400),
            const SizedBox(
              height: 5.0,
            ),
            NormalText(
                size: 16,
                color: ThemeColors.grey,
                text: 'Acc No. : 12345678901',
                weight: FontWeight.w400),
            const SizedBox(
              height: 10.0,
            ),
            const Text(
              'Credit Account Details:',
              style: TextStyle(
                fontSize: 18,
                color: ThemeColors.grey,
                decoration: TextDecoration.underline,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            NormalText(
                size: 16,
                color: ThemeColors.grey,
                text: 'Payee Name : abcxyz',
                weight: FontWeight.w400),
            const SizedBox(
              height: 5.0,
            ),
            NormalText(
                size: 16,
                color: ThemeColors.grey,
                text: 'Acc No: 12345678098765',
                weight: FontWeight.w400),
            const SizedBox(
              height: 10.0,
            ),
            const Text(
              'Payment Details:',
              style: TextStyle(
                fontSize: 18,
                color: ThemeColors.grey,
                decoration: TextDecoration.underline,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            NormalText(
                size: 16,
                color: ThemeColors.grey,
                text: 'Amount: ₹ 10000',
                weight: FontWeight.w400),
            const SizedBox(
              height: 5.0,
            ),
            NormalText(
                size: 16,
                color: ThemeColors.grey,
                text: 'Payment Method: IMPS ',
                weight: FontWeight.w400),
            const SizedBox(
              height: 5.0,
            ),
            NormalText(
                size: 16,
                color: ThemeColors.grey,
                text: 'Purpose: Payment for XYZ',
                weight: FontWeight.w400),
            const SizedBox(
              height: 5.0,
            ),
            NormalText(
                size: 16,
                color: ThemeColors.grey,
                text: 'Txn Ref No: 1234567dsbiu3818254',
                weight: FontWeight.w400),
            const SizedBox(
              height: 30.0,
            ),
            NormalText(
                size: 20,
                color: ThemeColors.primary1,
                text: 'OTP Verification',
                weight: FontWeight.w700),
            const SizedBox(
              height: 10.0,
            ),
            OtpTextBox(
              hintText: 'Enter OTP',
              controller: otpController,
              validatorText: 'Enter OTP',
              width: MediaQuery.of(context).size.width / 2.8,
            ),
            const SizedBox(
              height: 10.0,
            ),
            NormalText(
                size: 12,
                color: ThemeColors.white,
                text:
                    'An OTP will be been sent to your mobile number Registered with My3',
                weight: FontWeight.w400),
            Align(
              alignment: AlignmentDirectional.bottomEnd,
              child: BorderWithIconButton(
                textName: 'PROCEED',
                onPressed: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => const NetbankingSuccessfull()));
                },
                width: MediaQuery.of(context).size.width / 2.7,
                weight: FontWeight.w700,
                size: 18,
                icon: const Icon(Icons.arrow_forward,
                    color: ThemeColors.primary1),
              ),
            )
          ],
        ),
      ),
    );
  }
}
