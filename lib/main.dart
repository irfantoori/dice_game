import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(dicePage());
}

class dicePage extends StatefulWidget {
  @override
  _dicePageState createState() => _dicePageState();
}

class _dicePageState extends State<dicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Dice page'),
          backgroundColor: Colors.redAccent,
        ),
        backgroundColor: Colors.black,
        body: Center(
            child: Row(
          children: [
            Expanded(
                child: FlatButton(
              onPressed: () {
                setState(() {
                  leftDiceNumber = Random().nextInt(6) + 1;
                });
              },
              child: Image.asset(
                'images/dice$leftDiceNumber.png',
              ),
            )),
            Expanded(
                child: FlatButton(
              onPressed: () {
                setState(() {
                  rightDiceNumber = Random().nextInt(6) + 1;
                });
              },
              child: Image.asset(
                'images/dice$rightDiceNumber.png',
              ),
            )),
          ],
        )),
      ),
    );
  }
}
