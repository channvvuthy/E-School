// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

class TextNormal extends StatelessWidget {
  final String title;
  final double fontSize;
  final Color color;

  // Use the = defaultValue syntax to provide default values
  TextNormal({
    super.key,
    required this.title,
    this.fontSize = 16.0, // Default font size is 16.0
    this.color = Colors.black, // Default color is black
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontWeight: FontWeight.normal,
        fontSize: fontSize,
        color: color,
      ),
    );
  }
}
