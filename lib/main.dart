import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  // Function to play the sound for a given note number
  void playSound(int noteNumber) {
    final player = AudioPlayer();
    player.play(AssetSource('note$noteNumber.wav'));
  }

  // Function to build a button with a specified color and note number
  Expanded buildKey({required Color color, required int noteNumber}) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: color,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
        ),
        onPressed: () => playSound(noteNumber),
        child: const SizedBox(), // Empty child to make the button a solid block
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(color: Colors.red, noteNumber: 1),
              buildKey(color: Colors.orange, noteNumber: 2),
              buildKey(color: Colors.yellow, noteNumber: 3),
              buildKey(color: Colors.green, noteNumber: 4),
              buildKey(color: Colors.teal, noteNumber: 5),
              buildKey(color: Colors.blue, noteNumber: 6),
              buildKey(color: Colors.purple, noteNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
