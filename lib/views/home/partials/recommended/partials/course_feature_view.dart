// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CourseFeature extends StatelessWidget {
  const CourseFeature({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _buildFeature("assets/icons/youtube_icon.svg", "51"),
        _buildFeature("assets/icons/pdf_icon.svg", "51"),
        _buildFeature("assets/icons/comment_icon.svg", "Yes"),
        _buildFeature("assets/icons/test_icon.svg", "No"),
        _buildFeature("assets/icons/certificate_icon.svg", "Yes")
      ],
    );
  }
}

Widget _buildFeature(String iconUrl, String des) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 15),
    child: Column(
      children: [
        SvgPicture.asset(
          iconUrl,
          height: 35,
        ),
        SizedBox(
          height: 15,
        ),
        Text(des),
      ],
    ),
  );
}
