import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ui_design/views/components/button.dart';
import 'package:ui_design/views/components/text.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff7f2c2),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 1.95,
              child: const Text("A"),
            ),
            Container(
                height: MediaQuery.of(context).size.height / 2.2,
                width: MediaQuery.of(context).size.height,
                margin: const EdgeInsets.all(6.0),
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(50.0))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                        width: 300,
                        child: const CText(
                          text: "Manage your daily life express",
                          typeOfText: "header",
                        )),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                        width: 300,
                        child: const CText(
                          text:
                              "Expense Tracker is a simple and efficient personnal finance management app that allows to track your daily expenses and income.",
                        )),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                      margin: const EdgeInsets.all(20.0),
                      child: const CButton(
                        title: "Swipe to get started",
                        onPressed: null,
                        typeOfButton: "welcome",
                      ),
                    )
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
