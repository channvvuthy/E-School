// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter_eschool/configs/theme_color.dart';
import 'package:flutter_eschool/views/home/partials/feeds/partials/like_view.dart';
import 'package:flutter_eschool/views/home/partials/feeds/partials/list_user_likes.dart';
import 'package:flutter_eschool/views/home/partials/feeds/partials/reached_view.dart';
import 'package:get/get.dart';

class UserInteractView extends StatelessWidget {
  const UserInteractView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Row(
              children: [
                LikeView(),
                SizedBox(
                  width: 30,
                ),
                ReachedView(),
              ],
            ),
          ),
          Expanded(
            child: ListUserLikes(),
          )
        ],
      ),
    );
  }
}
