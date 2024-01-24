// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../../../configs/theme_color.dart';

class Hamburger extends StatelessWidget {
  const Hamburger({super.key});

  Widget _buildLine(double width) {
    return Container(
      width: width,
      height: 3,
      color: white,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        _buildLine(15),
        SizedBox(
          height: 8,
        ),
        _buildLine(10),
        SizedBox(
          height: 8,
        ),
        _buildLine(5),
      ],
    );
  }
}
