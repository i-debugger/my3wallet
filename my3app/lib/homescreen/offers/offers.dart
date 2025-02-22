import 'package:flutter/material.dart';
import '../../Widgets/color.dart';
import '../../Widgets/images.dart';
import '../../Widgets/items.dart';
import '../../Widgets/text.dart';
import '../../Widgets/textbox.dart';
import '../../homescreen/dashboard.dart';

class Offers extends StatefulWidget {
  const Offers({super.key});

  @override
  State<Offers> createState() => _OffersState();
}

class _OffersState extends State<Offers> {
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
          crossAxisAlignment: CrossAxisAlignment.start,
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
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Container(
                width: double.infinity,
                // height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: ThemeColors.ellipse12,
                ),
                child: Image.asset(
                  Images.offerimage1,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: NormalText(
                  size: 14,
                  color: ThemeColors.white,
                  text: 'Other Offers',
                  weight: FontWeight.w500),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: SizedBox(
                height: 155,
                width: double.infinity,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.all(20),
                  children: const <Widget>[
                    Items(),
                    Items(),
                    Items(),
                    Items(),
                    Items(),
                    Items(),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: NormalText(
                  size: 14,
                  color: ThemeColors.white,
                  text: 'Other Offers',
                  weight: FontWeight.w500),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: SizedBox(
                height: 180,
                width: double.infinity,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.all(20),
                  children: const <Widget>[
                    Items1(),
                    Items1(),
                    Items1(),
                    Items1(),
                    Items1(),
                    Items1(),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Container(
                width: double.infinity,
                // height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: ThemeColors.ellipse12,
                ),
                child: Image.asset(
                  Images.offerimage1,
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
