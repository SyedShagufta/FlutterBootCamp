import 'package:flutter/material.dart';

const List<Widget> characters = <Widget>[
  Text('Kakashi Hatake'),
  Text('Gojo Satoru')
];

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner : false,
    home: Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('Gojo Satoru'),
        backgroundColor: Colors.blueGrey[900],
      ),
      body: const Center(
          child: Image(
            image: AssetImage('images/gojo_satoru_new_img.jpg'),
          ),
      ),
    ),
  ));
}
