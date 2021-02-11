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
      floatingActionButton: _createButtons(),
    );
  }

  Widget _createButtons() {
    return Row(
      children: [
        // Decrement Button
        FloatingActionButton(
          onPressed: () {
            setState(() {
              _counter--;
            });
          },
          child: Icon(Icons.arrow_back),
        ),
        // Separation
        SizedBox(width: 8.0),
        // Reset Counter Button
        FloatingActionButton(
          onPressed: () {
            setState(() {
              _counter = 0;
            });
          },
          child: Icon(Icons.restore),
        ),
        // Separation
        SizedBox(width: 8.0),
        // Increment Button
        FloatingActionButton(
          onPressed: () {
            setState(() {
              _counter++;
            });
          },
          child: Icon(Icons.arrow_forward),
        ),
      ],
      mainAxisAlignment: MainAxisAlignment.end,
    );
  }
}
