import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CText extends StatelessWidget {
  final String text;
  final String? typeOfText;

  const CText({Key? key, this.typeOfText, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (typeOfText == "header") {
      return Text(
        text,
        textAlign: TextAlign.center,
        style: const TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold),
      );
    }
    if (typeOfText == "title") {
      return Text(
        text,
        style: const TextStyle(fontSize: 23.0, fontWeight: FontWeight.bold),
      );
    }
    if (typeOfText == "subtitle") {
      return Text(
        text,
        style: const TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
      );
    }
    return Text(
      text,
      textAlign: TextAlign.center,
      style: const TextStyle(fontSize: 13.0, fontWeight: FontWeight.normal, height: 1.4),
    );
  }
}
