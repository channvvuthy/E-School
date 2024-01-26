// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_eschool/components/avatar.dart';
import 'package:flutter_eschool/components/text_bold.dart';
import 'package:flutter_eschool/components/three_dot_vertical.dart';
import 'package:flutter_eschool/configs/theme_color.dart';

class FeedHeaderView extends StatelessWidget {
  const FeedHeaderView({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Avatar(
                size: 60,
                url:
                    "https://t4.ftcdn.net/jpg/03/64/21/11/360_F_364211147_1qgLVxv1Tcq0Ohz3FawUfrtONzz8nq3e.jpg"),
            SizedBox(
              width: 15,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextBold(title: "Hazel Morton"),
                Text(
                  "Thursday, January 25, 2024",
                  style: TextStyle(fontSize: 12, color: softBlack),
                )
              ],
            )
          ],
        ),
        ThreeDotVertical()
      ],
    );
  }
}
