import 'package:flutter/material.dart';
import '../../Widgets/color.dart';
import '../../Widgets/images.dart';
import '../../Widgets/sizedbox.dart';
import '../../Widgets/text.dart';

class Items extends StatelessWidget {
  const Items({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Column(
        children: [
          Image.asset(
            Images.offerSale,
            scale: 3.0,
          ),
          const SizedBox5(),
          NormalText(
              size: 12,
              color: ThemeColors.white,
              text: 'Offer',
              weight: FontWeight.w500),
          NormalText(
              size: 12,
              color: ThemeColors.white,
              text: 'Description',
              weight: FontWeight.w500),
        ],
      ),
    );
  }
}

class Items1 extends StatelessWidget {
  const Items1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Column(
        children: [
          Image.asset(
            Images.offerSale1,
            scale: 2.0,
          ),
          const SizedBox5(),
           NormalText(
              size: 12,
              color: ThemeColors.white,
              text: 'Offer',
              weight: FontWeight.w500),
          NormalText(
              size: 12,
              color: ThemeColors.white,
              text: 'Description',
              weight: FontWeight.w500),
        ],
      ),
    );
  }
}
