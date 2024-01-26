// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LikeView extends StatelessWidget {
  const LikeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SvgPicture.asset(
          "assets/icons/like_icon.svg",
          width: 20,
          height: 20,
        ),
        SizedBox(
          width: 10,
        ),
        const Text(
          "12",
          style: TextStyle(fontSize: 16),
        )
      ],
    );
  }
}
