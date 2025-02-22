import 'package:flutter/material.dart';
import '../../Widgets/color.dart';
import '../../Widgets/text.dart';

class WidthContainer extends StatelessWidget {
  final Widget widget1;
  final double width;
  final double radius;

  const WidthContainer({
    super.key,
    required this.widget1,
    required this.width,
    required this.radius,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      decoration: BoxDecoration(
        border: Border.all(width: 3, color: ThemeColors.primary1),
        borderRadius: BorderRadius.all(Radius.circular(radius)),
      ),
      child: widget1,
    );
  }
}

class WidthAndColorContainer extends StatelessWidget {
  final Widget widget1;
  final double width;
  final double radius;
  final Color color;

  const WidthAndColorContainer({
    super.key,
    required this.widget1,
    required this.width,
    required this.radius,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.all(Radius.circular(radius)),
      ),
      child: widget1,
    );
  }
}

class WidthWhiteBorderContainer extends StatelessWidget {
  final Widget widget1;
  final double width;
  final double radius;

  const WidthWhiteBorderContainer({
    super.key,
    required this.widget1,
    required this.width,
    required this.radius,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      decoration: BoxDecoration(
        border: Border.all(width: 3, color: ThemeColors.white),
        borderRadius: BorderRadius.all(Radius.circular(radius)),
      ),
      child: widget1,
    );
  }
}

class ButtonContainer extends StatelessWidget {
  final String text;
  final Color textColor;
  final Color color;
  final VoidCallback onPressed;

  const ButtonContainer({
    super.key,
    required this.text,
    required this.textColor,
    required this.color,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: const BorderRadius.all(Radius.circular(10)),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 15.0,right: 15.0,top: 10.0,bottom: 10.0),
          child: NormalText(
              size: 14,
              color: textColor,
              text: text,
              weight: FontWeight.w700
          ),
        ),
      ),
    );
  }
}
