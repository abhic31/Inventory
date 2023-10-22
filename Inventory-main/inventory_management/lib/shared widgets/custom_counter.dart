import 'package:flutter/material.dart';

class CustomCounter extends StatefulWidget {
  @override
  State<CustomCounter> createState() => _CustomCounterState();
}

class _CustomCounterState extends State<CustomCounter> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        IconButton(
          icon: Icon(
            Icons.add_circle,
            color: Colors.cyan,
            size: 30,
          ),
          onPressed: _incrementCounter,
        ),
        Text(
          '$_counter',
          style: TextStyle(fontSize: 30.0),
        ),
        IconButton(
          icon: Icon(
            Icons.remove_circle,
            color: Colors.cyan,
            size: 30,
          ),
          onPressed: _decrementCounter,
        ),
      ],
    );
  }
}
