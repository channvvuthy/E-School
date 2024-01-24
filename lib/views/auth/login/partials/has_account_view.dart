// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';

import '../../../../configs/theme_color.dart';

class HasAccountView extends StatelessWidget {
  final VoidCallback onTap;

  const HasAccountView({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          "Don't have account yet?",
        ),
        SizedBox(
          width: 5,
        ),
        MouseRegion(
          cursor: SystemMouseCursors.click,
          child: GestureDetector(
            onTap: onTap,
            child: Text(
              "Sign Up",
              style: TextStyle(color: primary),
            ),
          ),
        )
      ],
    );
  }
}
