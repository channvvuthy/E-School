// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_eschool/configs/theme_color.dart';
import 'package:flutter_eschool/views/home/partials/recommended/partials/card_view.dart';
import 'package:flutter_eschool/views/home/partials/recommended/partials/cart_view.dart';
import 'package:flutter_eschool/views/home/partials/recommended/partials/course_feature_view.dart';
import 'package:flutter_eschool/views/home/partials/recommended/partials/course_title_view.dart';
import 'package:flutter_eschool/views/home/partials/recommended/partials/header_title_view.dart';
import 'package:flutter_eschool/views/home/partials/recommended/partials/pricing_view.dart';

class RecommendedCourse extends StatelessWidget {
  const RecommendedCourse({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 15),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(border: Border.all(color: softGrey, width: 1)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HeaderTitle(),
          _buildSpace(),
          CardDView(),
          Center(
            child: CourseTitle(),
          ),
          _buildSpace(),
          CourseFeature(),
          _buildSpace(),
          _buildSpace(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [PricingView(), CartView()],
          )
        ],
      ),
    );
  }
}

Widget _buildSpace() {
  return SizedBox(
    height: 15,
  );
}
