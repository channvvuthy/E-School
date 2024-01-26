// ignore_for_file: use_super_parameters, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_eschool/components/avatar.dart';
import 'package:flutter_eschool/components/back.dart';
import 'package:flutter_eschool/components/scanner.dart';
import 'package:flutter_eschool/components/text_bold.dart';
import 'package:flutter_eschool/configs/theme_color.dart';
import 'package:flutter_eschool/views/layouts/partials/hamburger.dart';

class HeaderSidebar extends StatelessWidget {
  const HeaderSidebar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: primary,
      padding: EdgeInsets.only(top: 30, bottom: 30),
      child: Stack(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Expanded(
                  child: Column(
                children: [
                  Avatar(
                      size: 70,
                      url:
                          "https://t4.ftcdn.net/jpg/03/64/21/11/360_F_364211147_1qgLVxv1Tcq0Ohz3FawUfrtONzz8nq3e.jpg"),
                  SizedBox(
                    height: 10,
                  ),
                  TextBold(
                    title: "Allen A. Veazey",
                    color: white,
                  )
                ],
              )),
              Expanded(
                  child: Column(
                children: [
                  Scanner(size: 50),
                  SizedBox(
                    height: 10,
                  ),
                  TextBold(
                    title: "Scan",
                    color: white,
                  )
                ],
              )),
            ],
          ),
          Positioned(
            right: 0,
            top: 0,
            child: Row(
              children: [
                Back(),
                SizedBox(
                  width: 10,
                ),
                Hamburger()
              ],
            ),
          )
        ],
      ),
    );
  }
}
