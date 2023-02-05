import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MainExpensesScreen extends StatefulWidget {
  const MainExpensesScreen({Key? key}) : super(key: key);

  @override
  State<MainExpensesScreen> createState() => _MainExpensesScreenState();
}

class _MainExpensesScreenState extends State<MainExpensesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [Text("Main")],
      ),
    );
  }
}
