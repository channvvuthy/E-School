// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class FeedContentView extends StatelessWidget {
  const FeedContentView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15),
      child: Text(
          "Date to Date Calculator. Calculate how many days there are between two dates .\n Current Weather. Weather forecast for the next hour, today, tomorrow, and 14 ..."),
    );
  }
}
