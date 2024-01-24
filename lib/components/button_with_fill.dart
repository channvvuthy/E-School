// ignore_for_file: use_super_parameters, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_eschool/configs/theme_color.dart';

class ButtonWithFill extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  final Color backgroundColor;
  final double borderRadius;
  final double height;

  const ButtonWithFill({
    Key? key,
    required this.title,
    required this.onPressed,
    this.backgroundColor = primary,
    this.borderRadius = 4.0,
    this.height = 40.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius),
        color: backgroundColor,
      ),
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          title,
          style: TextStyle(
            color: Colors.white, // Adjust text color as needed
          ),
        ),
      ),
    );
  }
}
