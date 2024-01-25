import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../configs/icon.dart';
import 'package:get/get.dart';

class BackToLoginView extends StatelessWidget {
  const BackToLoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: 5,
        left: 0,
        child: MouseRegion(
          cursor: SystemMouseCursors.click,
          child: GestureDetector(
            onTap: () {
              Get.toNamed("/login");
            },
            child: SvgPicture.asset(
              backIcon,
              width: 14,
              height: 14,
            ),
          ),
        ));
  }
}
