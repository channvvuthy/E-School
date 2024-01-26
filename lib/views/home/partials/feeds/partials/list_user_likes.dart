// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_eschool/components/avatar.dart';
import 'package:flutter_eschool/configs/theme_color.dart';

class ListUserLikes extends StatelessWidget {
  const ListUserLikes({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 44,
      child: Stack(
        children: [
          Positioned(
              top: 0,
              right: 0,
              child: _buildUserLike()),
          Positioned(right: 20, child: _buildUserLike()),
          Positioned(right: 40, child: _buildUserLike()),
          Positioned(right: 60, child: _buildUserLike()),
          Positioned(right: 80, child: _buildUserLike()),

        ],
      ),
    );
  }
}

Widget _buildUserLike() {
  return Container(
    width: 44,
    height: 44,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(22),
      border: Border.all(
        color: white,
        width: 4
      )
    ),
    child: Avatar(
      url:
          "https://images.pexels.com/photos/18440569/pexels-photo-18440569/free-photo-of-close-up-of-pink-roses.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
      size: 40,
    ),
  );
}
