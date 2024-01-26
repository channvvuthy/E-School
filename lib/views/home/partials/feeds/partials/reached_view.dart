// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ReachedView extends StatelessWidget {
  const ReachedView({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SvgPicture.asset(
          "assets/icons/eye_icon.svg",
          width: 20,
          height: 20,
        ),
        SizedBox(
          width: 10,
        ),
        const Text(
          "1k",
          style: TextStyle(fontSize: 16),
        )
      ],
    );
  }
}
