import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: const Text('Dicee'),
          backgroundColor: Colors.blue,
        ),
        body: const DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
              child: TextButton(
                  onPressed: () {
                    setState(() {
                      rollDices();
                    });
                    print('Left button got pressed.');
                  },
                  child: Image.asset('images/dice$leftDiceNumber.png'))),
          Expanded(
              child: TextButton(
                  onPressed: () {
                    setState(() {
                      rollDices();
                    });
                    print('Right button got pressed.');
                  },
                  child: Image.asset('images/dice$rightDiceNumber.png')))
        ],
      ),
    );
  }

  void rollDices() {
    leftDiceNumber = _randomDiceNumber();
    rightDiceNumber = _randomDiceNumber();
  }

  int _randomDiceNumber() => 1 + Random().nextInt(6);
}
