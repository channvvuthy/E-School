// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_eschool/components/avatar.dart';
import 'package:flutter_eschool/configs/theme_color.dart';
import 'package:palette_generator/palette_generator.dart';

class UserStoryView extends StatefulWidget {
  final String imageUrl;
  final String profileUrl;

  const UserStoryView({
    super.key,
    required this.imageUrl,
    required this.profileUrl,
  });

  @override
  _UserStoryViewState createState() => _UserStoryViewState();
}

class _UserStoryViewState extends State<UserStoryView> {
  PaletteGenerator? _paletteGenerator;

  @override
  void initState() {
    super.initState();
    _generatePalette();
  }

  Future<void> _generatePalette() async {
    final imageProvider = NetworkImage(widget.imageUrl);

    try {
      _paletteGenerator =
          await PaletteGenerator.fromImageProvider(imageProvider);
      setState(() {});
    } catch (e) {
      print("Error generating palette: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 150,
      margin: EdgeInsets.only(right: 15),
      decoration: BoxDecoration(
        color: _paletteGenerator?.dominantColor?.color ?? Colors.black,
        image: _paletteGenerator != null
            ? DecorationImage(
                fit: BoxFit.contain,
                image: NetworkImage(widget.imageUrl),
              )
            : null,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: softGrey, width: 1),
      ),
      child: Stack(
        children: [
          if (_paletteGenerator != null)
            Positioned(
              top: 10,
              left: 10,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  border: Border.all(color: primary, width: 2),
                ),
                child: Avatar(
                  url: widget.profileUrl,
                  size: 40,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
