//Third Party
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Super Tap Counter"),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 235, 27, 35),
        ),
        body: Center(
          child: Column(
            children: [
              Text("Number of taps:"),
            ],
            mainAxisAlignment: MainAxisAlignment.center,
          ),
        ));
  }
}
