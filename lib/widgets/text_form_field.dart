import 'package:tradly/theme.dart';
import 'package:flutter/material.dart';

class EduTextFormField extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final bool obscureText;
  final String? Function(String?)? validator;
  const EduTextFormField(
      {super.key,
      required this.hintText,
      required this.controller,
      this.obscureText = false,
      required this.validator});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: brandColor,
        border: Border.all(color: textLightColor),
      ),
      child: TextFormField(
        obscureText: obscureText,
        controller: controller,
        style: const TextStyle(
          color: textLightColor,
        ),
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hintText,
          hintStyle: const TextStyle(
            color: textLightColor,
          ),
          contentPadding: const EdgeInsets.symmetric(horizontal: 20),
        ),
        validator: validator,
      ),
    );
  }
}
