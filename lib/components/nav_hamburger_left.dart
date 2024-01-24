// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_eschool/configs/theme_color.dart';

class NavHamburgerLeft extends StatelessWidget {
  const NavHamburgerLeft({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        _buildLine(),
        SizedBox(height: 8),
        _buildLine(),
        SizedBox(height: 8),
        _buildLine(),
      ],
    );
  }

  Widget _buildLine() {
    return Container(
      width: 25,
      height: 3,
      color: white,
    );
  }
}
