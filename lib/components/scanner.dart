import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Scanner extends StatelessWidget {
  final double size;
  final VoidCallback? onPress;

  const Scanner({super.key, required this.size, this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        alignment: Alignment.center,
        width: size,
        height: size,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(size / 2),
            border: Border.all(color: Colors.white, width: 1.0)),
        child: SvgPicture.asset(
          "assets/icons/scan_icon.svg",
          color: Colors.white,
        ),
      ),
    );
  }
}
