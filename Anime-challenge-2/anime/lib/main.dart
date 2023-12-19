import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MyAnimePage());
}

class MyAnimePage extends StatelessWidget {
  const MyAnimePage({super.key});

  void playSound(String path) async{
    final player = AudioPlayer();
    await player.play(AssetSource('$path.wav'));
    // await player.play(AssetSource('naruto.wav'));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text("Click on Me! 😉💖"),
        ),
        backgroundColor: Colors.teal.shade50,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              buildImageRow("gojo", "madara", "images/gojo.jpg", "images/madara.jpg"),
              buildImageRow("naruto", "Itachi", "images/naruto.jpg", "images/itachi.jpg"),
              buildImageRow("kakashi", "sasuke", "images/kakashi.png", "images/sasuke.jpg"),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildImageRow(String label1, String label2, String imagePath1, String imagePath2) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Expanded(
          child: Column(
            children: [
              TextButton(
                onPressed: () async {
                  playSound(label1);
                },
                child: Image.asset(imagePath1, width: 200, height: 150),
              ),
              const SizedBox(height: 8),
              Text(
                label1,
                style: const TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
        Column(
          children: [
            TextButton(
              onPressed: () async {
                playSound(label2);
              },
              child: Image.asset(imagePath2, width: 200, height: 150),
            ),
            const SizedBox(height: 8),
            Text(
              label2,
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
      ],
    );
  }
}
