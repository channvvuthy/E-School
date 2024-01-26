import 'package:flutter/material.dart';

class CourseMedia extends StatelessWidget {
  const CourseMedia({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.network(
        "https://images.ctfassets.net/hrltx12pl8hq/28ECAQiPJZ78hxatLTa7Ts/2f695d869736ae3b0de3e56ceaca3958/free-nature-images.jpg?fit=fill&w=1200&h=630");
  }
}
