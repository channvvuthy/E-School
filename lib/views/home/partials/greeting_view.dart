// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_eschool/components/text_bold.dart';
import 'package:flutter_eschool/configs/string.dart';
import 'package:flutter_eschool/configs/theme_color.dart';
import 'package:flutter_svg/flutter_svg.dart';

class GreetingView extends StatelessWidget {
  final String emoji;
  final String firstName;
  final String lastName;

  const GreetingView(
      {super.key,
      required this.emoji,
      required this.firstName,
      required this.lastName});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          emoji,
          width: 25,
          height: 25,
          color: primary,
        ),
        SizedBox(
          width: 10,
        ),
        Text(Strings.hello.toUpperCase()),
        SizedBox(
          width: 10,
        ),
        TextBold(title: firstName),
        SizedBox(
          width: 10,
        ),
        TextBold(title: lastName)
      ],
    );
  }
}
