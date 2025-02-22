import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../Widgets/buttons.dart';
import '../../Widgets/color.dart';
import '../../Widgets/images.dart';
import '../../Widgets/sizedbox.dart';
import '../../Widgets/text.dart';
import '../../homescreen/dashboard.dart';
import '../../homescreen/netbanking/paythroughnetbanking.dart';

class NetbankingSuccessfull extends StatelessWidget {
  const NetbankingSuccessfull({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeColors.themeblack,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
              left: 30.0, right: 30.0, top: 100, bottom: 20.0),
          child: Column(
            children: [
              const SizedBox20(),
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height / 1.87,
                decoration: const BoxDecoration(
                  color: ThemeColors.green,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Column(
                    children: [
                      Image.asset(
                        Images.tick,
                        scale: 1.5,
                      ),
                      const SizedBox20(),
                      NormalText(
                          size: 20,
                          color: ThemeColors.white,
                          text: 'Transaction Successfull!',
                          weight: FontWeight.w700),
                      const SizedBox20(),
                      Column(
                        children: [
                          NormalText(
                              size: 18,
                              color: ThemeColors.white,
                              text: 'Txn Ref ID:',
                              weight: FontWeight.w400),
                          NormalText(
                              size: 18,
                              color: ThemeColors.white,
                              text: '1314okjbajbtoihoaoih',
                              weight: FontWeight.w400),
                        ],
                      ),
                      const SizedBox20(),
                      Padding(
                        padding: const EdgeInsets.only(left: 24.0, right: 24.0),
                        child: Column(
                          children: [
                            NormalText(
                                size: 16,
                                color: ThemeColors.white,
                                text: 'Sent ₹1234 to Payee name',
                                weight: FontWeight.w400),
                            NormalText(
                                size: 16,
                                color: ThemeColors.white,
                                text: 'through IMPS',
                                weight: FontWeight.w400),
                          ],
                        ),
                      ),
                      const SizedBox20(),
                      SizedBox(
                        height: 40.0,
                        width: double.infinity,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50.0),
                                side: const BorderSide(
                                  color: ThemeColors.white,
                                  width: 1,
                                )), backgroundColor: ThemeColors.green,
                          ),
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Download Receipt',
                                  style: GoogleFonts.lato(
                                    color: ThemeColors.white,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                  )),
                              const SizedBox5(),
                              const Icon(
                                Icons.download_rounded,
                                color: ThemeColors.white,
                              )
                            ],
                          ),
                        ),
                      ),
                      const SizedBox20(),
                    ],
                  ),
                ),
              ),
              const SizedBox40(),
              BorderButton(
                  textName: 'Make another payment',
                  color: ThemeColors.primary1,
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) =>
                              const PayThroughNetBanking(),
                        ),
                        (route) => false);
                  },
                  width: double.infinity,
                  weight: FontWeight.w700,
                  size: 18),
              const SizedBox20(),
              BorderButton(
                  textName: 'Back to Dashboard',
                  color: ThemeColors.primary1,
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) => const DashBoard(),
                        ),
                        (route) => false);
                  },
                  width: double.infinity,
                  weight: FontWeight.w700,
                  size: 18),
            ],
          ),
        ),
      ),
    );
  }
}
