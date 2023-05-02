import 'package:tradly/theme.dart';
import 'package:flutter/material.dart';

class EduSearchTextField extends StatelessWidget {
  final TextEditingController controller;

  const EduSearchTextField({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: textLightColor,
      ),
      child: TextField(
        controller: controller,
        style: const TextStyle(color: brandColor),
        decoration: const InputDecoration(
            prefixIcon: Icon(Icons.search),
            prefixIconColor: brandColor,
            border: InputBorder.none,
            focusColor: brandColor,
            hintText: 'Search Products',
            hintStyle: TextStyle(color: Colors.grey),
            contentPadding: EdgeInsets.only(top: 15)),
      ),
    );
  }
}
