import 'package:flutter/cupertino.dart';
import 'package:flutter_eschool/components/text_bold.dart';
import 'package:flutter_eschool/configs/theme_color.dart';

class HeaderTitle extends StatelessWidget {
  const HeaderTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return TextBold(
      title: "Recommended Course",
      color: primary,
    );
  }
}
