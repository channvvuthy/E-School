// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_eschool/components/next.dart';
import 'package:flutter_eschool/configs/theme_color.dart';

class NavHamburgerRight extends StatelessWidget {
  const NavHamburgerRight({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildContainer(30),
            SizedBox(height: 8),
            _buildContainer(25),
            SizedBox(height: 8),
            _buildContainer(20),
          ],
        ),
        SizedBox(width: 5),
        Next(),
      ],
    );
  }

  Widget _buildContainer(double width) {
    return Container(
      width: width,
      height: 3,
      color: white,
    );
  }
}
