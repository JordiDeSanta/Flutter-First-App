//Third Party
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Super Tap Counter")),
          backgroundColor: Color.fromARGB(255, 235, 27, 35),
        ),
        body: Center(
          child: Text("Taps:"),
        ));
  }
}
