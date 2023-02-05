import 'package:flutter/material.dart';

class CButton extends StatelessWidget {
  final void Function()? onPressed;
  final String title;
  final String? typeOfButton;

  const CButton(
      {required this.title,
      required this.onPressed,
      this.typeOfButton,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (typeOfButton == "welcome") {
      return Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: const Color(0xffff5348),
            borderRadius: BorderRadius.circular(80.0)),
        child: Row(
          children: [
            Container(
              width: 50,
              height: 50,
              margin: const EdgeInsets.all(4.0),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(100.0)),
              child: const Icon(
                Icons.double_arrow,
                size: 15,
                color: Color(0xffff5348),
              ),
            ),
            Container(
              margin:
                  EdgeInsets.only(left: MediaQuery.of(context).size.width / 8),
              child: InkWell(
                  onTap: onPressed,
                  child: Text(
                    title,
                    textAlign: TextAlign.center,
                    style: const TextStyle(color: Colors.white),
                  )),
            ),
          ],
        ),
      );
    }
    return ElevatedButton(onPressed: onPressed, child: Text(title));
  }
}
