import 'package:flutter/material.dart';

// The main function is the starting point for our flutter project
void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner : false,
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: const Text('I am Rich'),
          backgroundColor: Colors.blueGrey[900],
        ),
        body: const Center(
          child : Image(
            image: AssetImage('images/diamond.png'),
          ),
        ),
      ),
    ),
  );
}
