// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_eschool/views/home/partials/recommended/partials/course_media_view.dart';
import 'package:flutter_eschool/views/home/partials/recommended/partials/teacher_view.dart';

class CardDView extends StatelessWidget {
  const CardDView({super.key});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxHeight: 500),
      child: SizedBox(
        height: 220,
        child: Stack(
          children: [
            CourseMedia(),
            Positioned(left: 15, top: 145, child: TeacherView())
          ],
        ),
      ),
    );
  }
}
