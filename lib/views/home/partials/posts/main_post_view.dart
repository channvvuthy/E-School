// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter_eschool/components/avatar.dart';
import 'package:flutter_eschool/components/no_outline_input.dart';
import 'package:flutter_eschool/configs/theme_color.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainPostView extends StatelessWidget {
  const MainPostView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 15),
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
          border: Border(
        bottom: BorderSide(color: softGrey, width: 1),
        top: BorderSide(color: softGrey, width: 1),
      )),
      child: Row(
        children: [
          Avatar(
              size: 50,
              url:
                  "https://images.pexels.com/photos/19686453/pexels-photo-19686453/free-photo-of-young-woman-in-a-white-shirt-holding-up-her-hands.jpeg"),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.only(left: 15),
            child: NoOutlineInput(
              onChanged: (value) {},
              placeholder: "Say something...",
            ),
          )),
          Expanded(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              _buildIcon("assets/icons/youtube_icon.svg"),
              SizedBox(
                width: 30,
              ),
              _buildIcon("assets/icons/gallery_icon.svg"),

            ],
          ))
        ],
      ),
    );
  }
}

Widget _buildIcon(String iconUrl){
  return SvgPicture.asset(
    iconUrl,
    width: 30,
    color: primary,
  );
}