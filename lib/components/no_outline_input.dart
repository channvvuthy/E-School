// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

class NoOutlineInput extends StatelessWidget {
  final Function(String) onChanged;
  final String placeholder;

  NoOutlineInput({
    super.key,
    required this.onChanged,
    this.placeholder = '',
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        border: InputBorder.none,
        enabledBorder: InputBorder.none,
        focusedBorder: InputBorder.none,
        errorBorder: InputBorder.none,
        disabledBorder: InputBorder.none,
        hintText: placeholder,
      ),
      onChanged: onChanged,
      style: TextStyle(fontWeight: FontWeight.normal),
    );
  }
}
