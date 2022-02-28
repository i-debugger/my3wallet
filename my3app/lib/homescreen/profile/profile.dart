import 'package:flutter/material.dart';
import '../../homescreen/dashboard.dart';
import '../../homescreen/profile/profilesetting.dart';
import '../../Widgets/color.dart';
import '../../Widgets/container.dart';
import '../../Widgets/images.dart';
import '../../Widgets/sizedbox.dart';
import '../../Widgets/text.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: ThemeColors.ellipse13,
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
      backgroundColor: ThemeColors.ellipse13,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: WidthContainer(
                  widget1: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 50,
                          backgroundColor: ThemeColors.ellipse11,
                          child: Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: NormalText(
                              size: 30,
                              weight: FontWeight.bold,
                              color: ThemeColors.black,
                              text: 'SS',
                            ),
                          ),
                        ),
                        const SizedBox10(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            NormalText(
                                size: 22,
                                color: ThemeColors.white,
                                text: 'Shiba Shin',
                                weight: FontWeight.w300),
                            Image.asset(
                              Images.verified,
                              scale: 2.5,
                            ),
                          ],
                        ),
                        const SizedBox10(),
                        NormalText(
                            size: 16,
                            color: ThemeColors.white,
                            text: 'UPI ID: 1234567890@my3',
                            weight: FontWeight.w300),
                        const SizedBox10(),
                        NormalText(
                            size: 16,
                            color: ThemeColors.white,
                            text: 'My3: 1234567890',
                            weight: FontWeight.w300),
                        const SizedBox10(),
                        Image.asset(
                          Images.barCode,
                          scale: 2.5,
                        ),
                        const SizedBox10(),
                        Padding(
                          padding: const EdgeInsets.only(left: 18.0, right: 15),
                          child: NormalText(
                              size: 14,
                              color: ThemeColors.white,
                              text:
                                  'Anyone can scan this QR and send you money on 1234567890. You will recive money in your linked bank account (Bankname 1234)',
                              weight: FontWeight.w300),
                        ),
                      ],
                    ),
                  ),
                  width: double.infinity,
                  radius: 18,
                ),
              ),
              WidthAndColorContainer(
                widget1: Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (BuildContext context) =>
                                const ProfileSetting()));
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10.0, right: 18.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(18.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  NormalText(
                                      size: 18,
                                      color: ThemeColors.white,
                                      text: 'My Profile Settings',
                                      weight: FontWeight.w600),
                                  const SizedBox5(),
                                  NormalText(
                                      size: 14,
                                      color: ThemeColors.grey,
                                      text:
                                          'Change Email Id, Update Mobile Number\nChange Password, KYC Details ',
                                      weight: FontWeight.w500),
                                ],
                              ),
                            ),
                            const Icon(
                              Icons.arrow_forward_ios,
                              color: ThemeColors.white,
                              size: 30,
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Divider(
                      color: ThemeColors.grey,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0, right: 18.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                NormalText(
                                    size: 18,
                                    color: ThemeColors.white,
                                    text: 'My Bank Account',
                                    weight: FontWeight.w600),
                                const SizedBox5(),
                                NormalText(
                                    size: 14,
                                    color: ThemeColors.grey,
                                    text:
                                        'my linked accounts, Change default\naccount,My3 Bank Account',
                                    weight: FontWeight.w500),
                              ],
                            ),
                          ),
                          const Icon(
                            Icons.arrow_forward_ios,
                            color: ThemeColors.white,
                            size: 30,
                          ),
                        ],
                      ),
                    ),
                    const Divider(
                      color: ThemeColors.grey,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0, right: 18.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                NormalText(
                                    size: 18,
                                    color: ThemeColors.white,
                                    text: 'My Credit Cards',
                                    weight: FontWeight.w600),
                                const SizedBox5(),
                                NormalText(
                                    size: 14,
                                    color: ThemeColors.grey,
                                    text:
                                        'My Credit Cards,Add/Remove Cards,\nView Score,View/Download Statement',
                                    weight: FontWeight.w500),
                              ],
                            ),
                          ),
                          const Icon(
                            Icons.arrow_forward_ios,
                            color: ThemeColors.white,
                            size: 30,
                          ),
                        ],
                      ),
                    ),
                    const Divider(
                      color: ThemeColors.grey,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0, right: 18.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                NormalText(
                                    size: 18,
                                    color: ThemeColors.white,
                                    text: 'My FDs',
                                    weight: FontWeight.w600),
                                const SizedBox5(),
                                NormalText(
                                    size: 14,
                                    color: ThemeColors.grey,
                                    text: 'My FDs, Add/Remove FD',
                                    weight: FontWeight.w500),
                              ],
                            ),
                          ),
                          const Icon(
                            Icons.arrow_forward_ios,
                            color: ThemeColors.white,
                            size: 30,
                          ),
                        ],
                      ),
                    ),
                    const Divider(
                      color: ThemeColors.grey,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0, right: 18.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                NormalText(
                                    size: 18,
                                    color: ThemeColors.white,
                                    text: 'Logout',
                                    weight: FontWeight.w600),
                                const SizedBox5(),
                                NormalText(
                                    size: 14,
                                    color: ThemeColors.grey,
                                    text:
                                        'Logout of your My3 account. This will take\nyou back to the Sign in Screen',
                                    weight: FontWeight.w500),
                              ],
                            ),
                          ),
                          const Icon(
                            Icons.arrow_forward_ios,
                            color: ThemeColors.white,
                            size: 30,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                width: double.infinity,
                radius: 0.0,
                color: ThemeColors.black,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
