// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_eschool/components/button_with_fill.dart';
import 'package:flutter_eschool/configs/string.dart';
import 'package:flutter_eschool/configs/theme_color.dart';

class BenefitView extends StatelessWidget {
  const BenefitView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Please login or register to get more benefit.",
          style: TextStyle(fontSize: 18),
        ),
        Container(
          decoration: BoxDecoration(
              border: Border(bottom: BorderSide(color: softGrey, width: 1))),
          height: 100,
          width: double.infinity,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 100,
                child: ButtonWithFill(
                  title: Strings.login,
                  onPressed: () {},
                  borderRadius: 8,
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Container(
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 0.1,
                    blurRadius: 10,
                    offset: Offset(0, 1),
                  )
                ]),
                width: 100,
                child: ButtonWithFill(
                  title: Strings.signUp,
                  onPressed: () {},
                  backgroundColor: white,
                  textColor: softBlack,
                  borderRadius: 8,
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
