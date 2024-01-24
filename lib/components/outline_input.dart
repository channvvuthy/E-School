// ignore_for_file: prefer_const_constructors, library_private_types_in_public_api, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:flutter_eschool/configs/theme_color.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OutlineInput extends StatelessWidget {
  final double height;
  final Function(String) onChanged;
  final String iconUrl;
  final String placeholder;
  final Color borderColor;
  final double iconSize;
  final bool isSecure;

  OutlineInput({
    super.key,
    this.height = 40.0,
    required this.onChanged,
    this.iconUrl = '',
    this.placeholder = '',
    this.borderColor = lightGrey,
    this.iconSize = 20,
    this.isSecure = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(width: 1, color: borderColor)),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          children: [
            if (iconUrl.isNotEmpty)
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: SvgPicture.asset(
                  iconUrl,
                  height: iconSize,
                  width: iconSize,
                  // Adjust height and width as needed
                ),
              ),
            Expanded(
              child: TextField(
                obscureText: isSecure,
                style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.normal),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: placeholder,
                  contentPadding: EdgeInsets.only(bottom: 10),
                ),
                onChanged: onChanged,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
