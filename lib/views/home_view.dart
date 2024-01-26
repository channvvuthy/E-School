// ignore_for_file: use_super_parameters, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_eschool/configs/theme_color.dart';
import 'package:flutter_eschool/views/home/partials/benefit_view.dart';
import 'package:flutter_eschool/views/home/partials/feeds/new_feed_view.dart';
import 'package:flutter_eschool/views/home/partials/greeting_view.dart';
import 'package:flutter_eschool/views/home/partials/recommended/recommended_course.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(15),
          child: GreetingView(
              emoji: "assets/icons/emoji/smile_emoji_icon.svg",
              firstName: "Allen",
              lastName: "A. Veazey"),
        ),
        BenefitView(),
        Padding(
          padding: const EdgeInsets.all(15),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.height * 0.8,
                child: NewFeedView(),
              ),
              Expanded(
                child: RecommendedCourse(),
              )
            ],
          ),
        )
      ],
    );
  }
}
