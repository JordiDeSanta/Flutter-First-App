//Third Party
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final fontStyle = new TextStyle(fontSize: 32);
  final counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Super Tap Counter'),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 235, 27, 35),
      ),
      body: Center(
        child: Column(
          children: [
            Text('Number of taps:', style: fontStyle),
            Text('0', style: fontStyle),
          ],
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.plus_one),
      ),
    );
  }
}
