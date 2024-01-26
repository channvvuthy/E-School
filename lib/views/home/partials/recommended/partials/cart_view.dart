import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      "assets/icons/cart_icon.svg",
      height: 30,
    );
  }
}
