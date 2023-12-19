import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.pink,
        appBar: AppBar(
          title: const Text('Dicee Game'),
          backgroundColor: Colors.transparent,
        ),
        body: DicePage(),
      ),
    )
  );
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  // This widget is the root of your application.
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void rollDice(){
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
                onPressed: () {
                  rollDice();
                },
                child: Image.asset("images/dice$leftDiceNumber.png")),
          ),
          Expanded(
            child: TextButton(
                onPressed: () {
                  rollDice();
                },
                child: Image.asset("images/dice$rightDiceNumber.png")),
          ),
        ],
      ),
    );

  }
}




