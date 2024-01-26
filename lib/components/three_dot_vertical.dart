// ignore_for_file: prefer_const_constructors, use_super_parameters

import 'package:flutter/material.dart';
import 'package:flutter_eschool/configs/theme_color.dart';

class ThreeDotVertical extends StatelessWidget {
  const ThreeDotVertical({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildDot(),
        SizedBox(
          height: 4,
        ),
        _buildDot(),
        SizedBox(
          height: 4,
        ),
        _buildDot(),
      ],
    );
  }
}

Widget _buildDot() {
  return Container(
    width: 5,
    height: 5,
    decoration: BoxDecoration(
      color: softBlack,
      borderRadius: BorderRadius.circular(5),
    ),
  );
}
