import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Xylophone(),
    );
  }
}

class Xylophone extends StatelessWidget {
  final audioPlayer = AudioCache();

  void playNote(int noteId) => audioPlayer.play('note$noteId.wav');

  Widget buildKey({Color keyColor, int noteId}) => Expanded(
        child: FlatButton(
            color: keyColor,
            onPressed: () {
              playNote(noteId);
            },
            child: null),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(keyColor: Colors.purple, noteId: 1),
              buildKey(keyColor: Colors.blue.shade600, noteId: 2),
              buildKey(keyColor: Colors.cyanAccent, noteId: 3),
              buildKey(keyColor: Colors.green, noteId: 4),
              buildKey(keyColor: Colors.yellow, noteId: 5),
              buildKey(keyColor: Colors.orange, noteId: 6),
              buildKey(keyColor: Colors.red, noteId: 7),
            ],
          ),
        ),
      ),
    );
  }
}
