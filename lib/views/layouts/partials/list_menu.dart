// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:flutter_eschool/configs/theme_color.dart';

class ListMenu extends StatelessWidget {
  final String title;
  final List<Widget> items;

  ListMenu({super.key, required this.title, required this.items});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 15, top: 25, bottom: 5),
          child: Text(
            title,
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 14, color: primary),
          ),
        ),
        SizedBox(
          height: 15,
        ),
        GridView.count(
          crossAxisCount: 4,
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          mainAxisSpacing: 20,
          children: items,
        ),
      ],
    );
  }
}
