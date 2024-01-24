// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_eschool/configs/config.dart';
import 'package:flutter_eschool/configs/theme_color.dart';

class LogoView extends StatelessWidget {
  final double size;

  const LogoView({super.key, this.size = 80});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(size / 2),
          border: Border.all(
            width: 1,
            color: primary,
          ),
          image: DecorationImage(
              image: AssetImage(AppConfig.logoUrl), fit: BoxFit.cover)),
    );
  }
}
