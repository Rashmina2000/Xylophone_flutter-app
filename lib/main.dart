import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  void playSound(int soundNumber) async {
    final player = AudioPlayer();
    await player.play(AssetSource('note$soundNumber.wav'));
  }

  Expanded musicKey(Color color, int soundNumber) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: color,
        ),
        onPressed: () {
          playSound(soundNumber);
          // await player.setSource(AssetSource('assets/note1.wav'));
        },
        child: const Text(''),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              musicKey(Colors.red, 1),
              musicKey(Colors.orange, 2),
              musicKey(Colors.yellow, 3),
              musicKey(Colors.green, 4),
              musicKey(Colors.blue, 5),
              musicKey(Colors.indigo, 6),
              musicKey(Colors.purple, 7),
            ],
          ),
        ),
      ),
    );
  }
}
