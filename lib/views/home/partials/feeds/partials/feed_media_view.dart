// ignore_for_file: prefer_const_constructors

import 'dart:async';
import 'dart:ui' as ui;
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:palette_generator/palette_generator.dart';
import 'package:transparent_image/transparent_image.dart';

class FeedMediaView extends StatelessWidget {
  const FeedMediaView({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Color>(
      future: getDominantColor(
        'https://images.pexels.com/photos/19923206/pexels-photo-19923206/free-photo-of-a-woman-in-white-shirt-and-jeans-standing-in-a-garden.jpeg',
      ),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return CircularProgressIndicator();
        }
        if (snapshot.hasError) {
          return Text('Error: ${snapshot.error}');
        }
        final backgroundColor = snapshot.data;
        return StaggeredGrid.count(
          crossAxisCount: 1,
          mainAxisSpacing: 4,
          crossAxisSpacing: 4,
          children: [
            StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 1,
              child: Container(
                color: backgroundColor,
                child: FadeInImage.memoryNetwork(
                  placeholder: kTransparentImage,
                  image:
                  'https://images.pexels.com/photos/19923206/pexels-photo-19923206/free-photo-of-a-woman-in-white-shirt-and-jeans-standing-in-a-garden.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}

Future<Color> getDominantColor(String imageUrl) async {
  final imageProvider = NetworkImage(imageUrl);
  final imageStream = imageProvider.resolve(ImageConfiguration());
  final completer = Completer<ui.Image>();
  final listener = ImageStreamListener((ImageInfo image, bool synchronousCall) {
    completer.complete(image.image);
  });
  imageStream.addListener(listener);

  final image = await completer.future;
  final paletteGenerator = await PaletteGenerator.fromImage(image);
  return paletteGenerator.dominantColor!.color;
}