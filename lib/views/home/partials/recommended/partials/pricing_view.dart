// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_eschool/components/text_bold.dart';
import 'package:flutter_eschool/configs/theme_color.dart';

class PricingView extends StatelessWidget {
  const PricingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          '\$20',
          style: TextStyle(
              fontSize: 18,
              decoration: TextDecoration.lineThrough,
              decorationThickness: 2.0),
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          "10 USD",
          style: TextStyle(color: red, fontSize: 18),
        ),
      ],
    );
  }
}
