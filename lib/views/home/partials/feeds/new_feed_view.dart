// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_eschool/configs/theme_color.dart';
import 'package:flutter_eschool/views/home/partials/feeds/partials/comment_action_view.dart';
import 'package:flutter_eschool/views/home/partials/feeds/partials/feed_content_view.dart';
import 'package:flutter_eschool/views/home/partials/feeds/partials/feed_header_view.dart';
import 'package:flutter_eschool/views/home/partials/feeds/partials/feed_media_view.dart';
import 'package:flutter_eschool/views/home/partials/feeds/partials/user_interact_view.dart';

class NewFeedView extends StatelessWidget {
  const NewFeedView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(border: Border.all(color: softGrey, width: 1)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FeedHeaderView(),
          FeedContentView(),
          FeedMediaView(),
          UserInteractView(),
          CommentActionView()
        ],
      ),
    );
  }
}
