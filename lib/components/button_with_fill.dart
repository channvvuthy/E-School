// ignore_for_file: use_super_parameters, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_eschool/configs/theme_color.dart';

class ButtonWithFill extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  final Color backgroundColor;
  final Color textColor;
  final double borderRadius;
  final double height;

  const ButtonWithFill({
    Key? key,
    required this.title,
    required this.onPressed,
    this.backgroundColor = primary,
    this.borderRadius = 4.0,
    this.height = 40.0,
    this.textColor = white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: height,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius),
        color: backgroundColor,
      ),
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: GestureDetector(
          onTap: onPressed,
          child: Text(
            title,
            style: TextStyle(
              color: textColor, // Adjust text color as needed
            ),
          ),
        ),
      ),
    );
  }
}
