// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_eschool/configs/theme_color.dart';
import 'package:flutter_eschool/views/home/partials/stories/partials/user_story_view.dart';

class MainStoryView extends StatelessWidget {
  const MainStoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Stack(
        children: [
          ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 10, // Replace with your actual item count
            itemBuilder: (context, index) {
              // Replace with your horizontally scrolling content item
              return Column(
                children: [
                  UserStoryView(
                    imageUrl:
                        'https://images.pexels.com/photos/18176651/pexels-photo-18176651/free-photo-of-fisherman-on-fishing-boat-in-black-and-white.jpeg',
                    profileUrl:
                        'https://images.pexels.com/photos/11385649/pexels-photo-11385649.jpeg',
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(generateRandomName())
                ],
              );
            },
          ),
          Positioned(
            right: 16,
            bottom: 16,
            child: FloatingActionButton(
              onPressed: () {
                // Handle button press
              },
              child: Icon(Icons.add),
            ),
          ),
        ],
      ),
    );
  }
}

String generateRandomName() {
  final List<String> firstNames = [
    'Alice',
    'Bob',
    'Charlie',
    'David',
    'Emma',
    'Frank',
    'Grace',
    'Henry',
    'Ivy',
    'Jack'
  ];

  final List<String> lastNames = [
    'Smith',
    'Johnson',
    'Williams',
    'Jones',
    'Brown',
    'Davis',
    'Miller',
    'Wilson',
    'Moore',
    'Taylor'
  ];

  final Random random = Random();

  final String firstName = firstNames[random.nextInt(firstNames.length)];
  final String lastName = lastNames[random.nextInt(lastNames.length)];

  return '$firstName $lastName';
}
