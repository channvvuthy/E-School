// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class GenderView extends StatefulWidget {
  final Function(String) onGenderChanged;

  const GenderView({super.key, required this.onGenderChanged});

  @override
  _GenderViewState createState() => _GenderViewState();
}

class _GenderViewState extends State<GenderView> {
  late String selectedGender = 'male';

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Radio(
          value: 'male',
          groupValue: selectedGender,
          onChanged: (value) {
            setState(() {
              selectedGender = value!;
              widget.onGenderChanged(selectedGender); // Invoke the callback
            });
          },
        ),
        Text('Male'),
        SizedBox(width: 16),
        Radio(
          value: 'female',
          groupValue: selectedGender,
          onChanged: (value) {
            setState(() {
              selectedGender = value!;
              widget.onGenderChanged(selectedGender); // Invoke the callback
            });
          },
        ),
        Text('Female'),
      ],
    );
  }
}
