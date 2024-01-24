import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  final double size;
  final String url;
  final VoidCallback? onTap;

  const Avatar({
    super.key,
    required this.size,
    required this.url,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(size / 2), // Using half of size for a circular shape
          image: DecorationImage(
            image: NetworkImage(url),
            fit: BoxFit.cover, // Adjust the BoxFit based on your needs
          ),
        ),
      ),
    );
  }
}
