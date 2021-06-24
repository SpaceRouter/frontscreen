import 'package:flutter/material.dart';

/// Splashscreen class
class VictorPage extends StatelessWidget {
  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => VictorPage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Expanded(
              child: Image.asset("assets/victor.jpg"),
            ),
          ),
        ),
      ),
    );
  }
}
