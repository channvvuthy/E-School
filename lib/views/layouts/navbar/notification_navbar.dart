// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_eschool/data/notification_items.dart';
import 'package:flutter_svg/svg.dart';

import '../../../configs/theme_color.dart';

class NotificationNavbar extends StatelessWidget {
  const NotificationNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    final items = notificationItems.toList();
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: List.generate(items.length, (index) {
        final item = items[index];
        final icon = item['icon'];
        final page = item['page'];
        return InkWell(
          onTap: (){
            print(page);
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: SvgPicture.asset(
              icon,
              width: 25,
              height: 25,
              color: softBlack,
            ),
          ),
        );
      }),
    );
  }
}
