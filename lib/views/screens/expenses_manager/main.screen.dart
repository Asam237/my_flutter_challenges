import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../components/text.dart';

class MainExpensesScreen extends StatefulWidget {
  const MainExpensesScreen({Key? key}) : super(key: key);

  @override
  State<MainExpensesScreen> createState() => _MainExpensesScreenState();
}

class _MainExpensesScreenState extends State<MainExpensesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 30.0,
            ),
            ListTile(
              title: CText(text: "Welcome back"),
              subtitle: CText(text: "Ahmed Wahid", typeOfText: "subtitle"),
              trailing: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                    color: Color(0xffff5348),
                    borderRadius: BorderRadius.circular(100)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
