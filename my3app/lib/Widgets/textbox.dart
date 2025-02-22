import 'package:flutter/material.dart';

import 'color.dart';

class NormalTextField extends StatelessWidget {
  final String hintText;
  final String validatorText;
  final TextEditingController controller;
  final Icon icon;

  const NormalTextField({
    super.key,
    required this.hintText,
    required this.controller,
    required this.validatorText,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value!.isEmpty) {
          return validatorText;
        }
        return null;
      },
      style: const TextStyle(color: ThemeColors.white),
      controller: controller,
      keyboardType: TextInputType.emailAddress,
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        errorStyle: const TextStyle(color: ThemeColors.primary4),
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: ThemeColors.primary4, width: 3.0),
          borderRadius: BorderRadius.circular(50.0),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: ThemeColors.white, width: 3.0),
          borderRadius: BorderRadius.circular(50.0),
        ),
        filled: true,
        fillColor: ThemeColors.ellipse13,
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(50.0)),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: ThemeColors.white, width: 3.0),
          borderRadius: BorderRadius.circular(50.0),
        ),
        prefixIcon: icon,
        prefixStyle: const TextStyle(color: ThemeColors.grey),
        hintText: hintText,
        hintStyle: const TextStyle(color: ThemeColors.grey),
      ),
    );
  }
}

class NormalTextFieldWithWidth extends StatelessWidget {
  final String hintText;
  final String validatorText;
  final TextEditingController controller;
  final Icon icon;
  final double width;

  const NormalTextFieldWithWidth({
    super.key,
    required this.hintText,
    required this.controller,
    required this.validatorText,
    required this.icon,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: TextFormField(
        validator: (value) {
          if (value!.isEmpty) {
            return validatorText;
          }
          return null;
        },
        style: const TextStyle(color: ThemeColors.white),
        controller: controller,
        keyboardType: TextInputType.emailAddress,
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
          errorStyle: const TextStyle(color: ThemeColors.primary4),
          errorBorder: OutlineInputBorder(
            borderSide:
                const BorderSide(color: ThemeColors.primary4, width: 3.0),
            borderRadius: BorderRadius.circular(50.0),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: ThemeColors.white, width: 3.0),
            borderRadius: BorderRadius.circular(50.0),
          ),
          filled: true,
          fillColor: ThemeColors.ellipse13,
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(50.0)),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: ThemeColors.white, width: 3.0),
            borderRadius: BorderRadius.circular(50.0),
          ),
          prefixIcon: icon,
          prefixStyle: const TextStyle(color: ThemeColors.grey),
          hintText: hintText,
          hintStyle: const TextStyle(color: ThemeColors.grey),
        ),
      ),
    );
  }
}

class OtpTextBox extends StatelessWidget {
  final String hintText;
  final String validatorText;
  final TextEditingController controller;
  final double width;

  const OtpTextBox({
    super.key,
    required this.hintText,
    required this.controller,
    required this.validatorText,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: TextFormField(
        validator: (value) {
          if (value!.isEmpty) {
            return validatorText;
          }
          return null;
        },
        style: const TextStyle(color: ThemeColors.white),
        controller: controller,
        keyboardType: TextInputType.number,
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
          errorStyle: const TextStyle(color: ThemeColors.primary4),
          errorBorder: OutlineInputBorder(
            borderSide:
                const BorderSide(color: ThemeColors.primary4, width: 3.0),
            borderRadius: BorderRadius.circular(50.0),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: ThemeColors.white, width: 3.0),
            borderRadius: BorderRadius.circular(50.0),
          ),
          filled: true,
          fillColor: ThemeColors.ellipse13,
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(50.0)),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: ThemeColors.white, width: 3.0),
            borderRadius: BorderRadius.circular(50.0),
          ),
          hintText: hintText,
          hintStyle: const TextStyle(color: ThemeColors.grey),
        ),
      ),
    );
  }
}

class NormalTextFieldWithOutValidator extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final Icon icon;

  const NormalTextFieldWithOutValidator({
    super.key,
    required this.hintText,
    required this.controller,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: const TextStyle(color: ThemeColors.white),
      controller: controller,
      keyboardType: TextInputType.text,
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        filled: true,
        fillColor: ThemeColors.ellipse13,
        focusedBorder: InputBorder.none,
        prefixIcon: icon,
        prefixStyle: const TextStyle(color: ThemeColors.grey),
        hintText: hintText,
        hintStyle: const TextStyle(color: ThemeColors.grey),
      ),
    );
  }
}
