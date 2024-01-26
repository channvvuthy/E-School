// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_eschool/components/avatar.dart';
import 'package:flutter_eschool/components/no_outline_input.dart';
import 'package:flutter_eschool/configs/theme_color.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CommentActionView extends StatelessWidget {
  const CommentActionView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 15),
      decoration:
          BoxDecoration(border: Border(top: BorderSide(color: softGrey))),
      child: Row(
        children: [
          Avatar(
            url:
                "https://buffer.com/library/content/images/2023/10/free-images.jpg",
            size: 50,
          ),
          Expanded(
              child: Container(
            padding: EdgeInsets.only(left: 15),
            child: NoOutlineInput(
              placeholder: 'Add comment',
              onChanged: (value) {},
            ),
          )),
          Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
            children: [
              _buildIcon("assets/icons/emoji/smile_emoji_icon.svg"),
              SizedBox(
                width: 15,
              ),
              _buildIcon("assets/icons/gallery_icon.svg"),
              SizedBox(
                width: 15,
              ),
              _buildIcon("assets/icons/send_icon.svg"),
            ],
          ))
        ],
      ),
    );
  }
}

Widget _buildIcon(String icon) {
  return SvgPicture.asset(
    icon,
    width: 30,
    height: 30,
    color: softBlack,
  );
}
