// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_eschool/components/text_normal.dart';
import 'package:flutter_eschool/configs/theme_color.dart';

class TeacherView extends StatelessWidget {
  const TeacherView({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: primary
          ),
        ),
        SizedBox(
          width: 15,
        ),
        TextNormal(title: "Moeys")
      ],
    );
  }
}
