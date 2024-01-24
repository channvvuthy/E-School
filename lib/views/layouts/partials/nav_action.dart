// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_eschool/commons/Sidebar.dart';

import '../../../components/nav_hamburger_left.dart';
import '../../../components/nav_hamburger_right.dart';
import '../../../configs/theme_color.dart';
import 'package:get/get.dart';

class NavAction extends StatelessWidget {
  const NavAction({super.key});

  @override
  Widget build(BuildContext context) {
    final sidebar = Sidebar.instance;
    return Positioned(
      left: -15,
      top: 15,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: primary,
        ),
        padding: EdgeInsets.only(top: 15, bottom: 15, right: 10, left: 15),
        child: Row(
          children: [
            InkWell(
              onTap: (){
                sidebar.setSidebarOpen();
              },
              child: Obx(() => sidebar.isSidebarOpen.value
                  ? NavHamburgerLeft()
                  : NavHamburgerRight()),
            )
          ],
        ),
      ),
    );
  }
}
