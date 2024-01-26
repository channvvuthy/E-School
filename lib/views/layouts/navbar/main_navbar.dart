// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_eschool/configs/theme_color.dart';
import 'package:flutter_eschool/data/navbar_menu_items.dart';
import 'package:flutter_eschool/data/notification_items.dart';
import 'package:flutter_eschool/views/layouts/navbar/notification_navbar.dart';
import 'package:flutter_eschool/views/layouts/partials/list_navbar.dart';

class MainNavbar extends StatelessWidget {
  const MainNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 50),
      height: 125,
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(width: 1, color: softGrey))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Align(
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: ListNavbar(
                    items: navbarMenuItems.toList(),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: NotificationNavbar(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
