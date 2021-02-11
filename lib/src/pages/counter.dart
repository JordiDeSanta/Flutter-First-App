import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  final _fontStyle = new TextStyle(fontSize: 32);
  int _counter = 0;

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
            Text('Number of taps:', style: _fontStyle),
            Text('$_counter', style: _fontStyle),
          ],
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _counter++;
          });
        },
        child: Icon(Icons.plus_one),
      ),
    );
  }
}
