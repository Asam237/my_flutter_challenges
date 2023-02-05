import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CText extends StatelessWidget {
  final String text;
  final String? typeOfText;
  final bool? center;

  const CText({Key? key, this.typeOfText, required this.text, this.center})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (typeOfText == "header") {
      return Text(
        text,
        textAlign: TextAlign.center,
        style: const TextStyle(fontSize: 28.0, color: Colors.black),
      );
    }
    if (typeOfText == "title") {
      return Text(
        text,
        style: const TextStyle(fontSize: 23.0),
      );
    }
    if (typeOfText == "subtitle") {
      return Text(
        text,
        style: const TextStyle(fontSize: 18.0),
      );
    }

    if (center == true) {
      return Text(
        text,
        textAlign: TextAlign.center,
        style: const TextStyle(fontSize: 13.0, height: 1.4),
      );
    }
    return Text(
      text,
      style: const TextStyle(fontSize: 13.0, height: 1.4, color: Colors.black),
    );
  }
}
