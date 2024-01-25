// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../../../../configs/theme_color.dart';

class BoxShadowView extends StatelessWidget {
  final Widget child;

  const BoxShadowView({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 450,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: lightGrey.withOpacity(0.3),
          width: 1.0,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 0.5,
            blurRadius: 10,
            offset: Offset(0, 1),
          ),
        ],
      ),
      child: child,
    );
  }
}
