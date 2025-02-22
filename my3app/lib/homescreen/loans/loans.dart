import 'package:flutter/material.dart';
import '../../Widgets/color.dart';
import '../../Widgets/images.dart';
import '../../Widgets/sizedbox.dart';
import '../../Widgets/text.dart';
import '../../Widgets/textbox.dart';
import '../../homescreen/dashboard.dart';

class Loans extends StatefulWidget {
  const Loans({super.key});

  @override
  State<Loans> createState() => _LoansState();
}

class _LoansState extends State<Loans> {
  final categoryController = TextEditingController();
  final panController = TextEditingController();
  final dobController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

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
          child: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              NormalText(
                  size: 16,
                  color: ThemeColors.primary2,
                  text: 'My3 Loans',
                  weight: FontWeight.bold),
              const Divider(
                thickness: 1,
                color: ThemeColors.primary2,
              ),
              const SizedBox10(),
              NormalText(
                size: 14,
                color: ThemeColors.primary2,
                text: 'Confirm details',
                weight: FontWeight.w600,
              ),
              const SizedBox20(),
              NormalText(
                size: 14,
                color: ThemeColors.primary2,
                text: 'Enter PAN number',
                weight: FontWeight.normal,
              ),
              const SizedBox20(),
              NormalTextField(
                hintText: 'PAN number',
                controller: panController,
                validatorText: 'Enter PAN number',
                icon: const Icon(
                  Icons.contact_mail_outlined,
                  color: ThemeColors.grey,
                ),
              ),
              const SizedBox20(),
              NormalText(
                size: 14,
                color: ThemeColors.primary2,
                text: 'Enter Date of Birth',
                weight: FontWeight.normal,
              ),
              const SizedBox20(),
              NormalTextField(
                hintText: 'DDMMYYYY',
                controller: panController,
                validatorText: 'Enter DOB',
                icon: const Icon(
                  Icons.calendar_today_rounded,
                  color: ThemeColors.grey,
                ),
              ),
              const SizedBox20(),
              NormalText(
                size: 14,
                color: ThemeColors.primary2,
                text: 'Purpose of Loan',
                weight: FontWeight.normal,
              ),
              const SizedBox20(),
              NormalTextField(
                hintText: 'Choose a Category',
                controller: panController,
                validatorText: 'Choose a Category',
                icon: const Icon(
                  Icons.expand_more,
                  color: ThemeColors.grey,
                ),
              ),
              const SizedBox10(),
              const Divider(
                thickness: 1,
                color: ThemeColors.primary2,
              ),
              const SizedBox10(),
              NormalText(
                size: 14,
                color: ThemeColors.primary2,
                text: 'Occupation Details: ',
                weight: FontWeight.w600,
              ),
              const SizedBox20(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            NormalText(
                              size: 16,
                              color: ThemeColors.primary2,
                              text: 'Upload Income Proof',
                              weight: FontWeight.normal,
                            ),
                            const SizedBox10(),
                            NormalText(
                              size: 12,
                              color: ThemeColors.grey,
                              text: 'Details Income Proof',
                              weight: FontWeight.normal,
                            ),
                          ],
                        ),
                        const Spacer(),
                        Image.asset(Images.uploadfile)
                      ],
                    ),
                    const SizedBox30(),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            NormalText(
                              size: 16,
                              color: ThemeColors.primary2,
                              text: 'Upload Bank Statement',
                              weight: FontWeight.normal,
                            ),
                            const SizedBox10(),
                            NormalText(
                              size: 12,
                              color: ThemeColors.grey,
                              text: 'Details Bank Statement',
                              weight: FontWeight.normal,
                            ),
                          ],
                        ),
                        const Spacer(),
                        Image.asset(Images.uploadfile)
                      ],
                    ),
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
