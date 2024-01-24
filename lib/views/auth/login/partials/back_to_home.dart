import 'package:flutter/material.dart';

class BackToHome extends StatelessWidget {
  const BackToHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              onTap: () {},
              child: Text("Home"),
            ),
          )
        ],
      ),
    );
  }
}
