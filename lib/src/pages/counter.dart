import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  final _fontStyle = new TextStyle(fontSize: 32);
  Color _mainColor = Color.fromARGB(255, 235, 27, 35);
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Super Tap Counter'),
        centerTitle: true,
        backgroundColor: _mainColor,
      ),
      body: _printTaps(),
      floatingActionButton: _createButtons(),
    );
  }

  Widget _createButtons() {
    return Row(
      children: [
        // Separation
        SizedBox(width: 32.0),
        // Decrement Button
        FloatingActionButton(
          onPressed: () {
            setState(() {
              _counter--;
            });
          },
          child: Icon(Icons.arrow_back),
          backgroundColor: _mainColor,
        ),
        // Separation
        Expanded(child: SizedBox()),
        // Reset Counter Button
        FloatingActionButton(
          onPressed: () {
            setState(() {
              _counter = 0;
            });
          },
          child: Icon(Icons.restore),
          backgroundColor: _mainColor,
        ),
        // Separation
        Expanded(child: SizedBox()),
        // Increment Button
        FloatingActionButton(
          onPressed: () {
            setState(() {
              _counter++;
            });
          },
          child: Icon(Icons.arrow_forward),
          backgroundColor: _mainColor,
        ),
      ],
      mainAxisAlignment: MainAxisAlignment.end,
    );
  }

  Widget _printTaps() {
    return Center(
      child: Column(
        children: [
          Text('Number of taps:', style: _fontStyle),
          Text('$_counter', style: _fontStyle),
        ],
        mainAxisAlignment: MainAxisAlignment.center,
      ),
    );
  }
}
