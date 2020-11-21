import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(Pianoly());
}

class Pianoly extends StatefulWidget {
  @override
  _PianolyState createState() => _PianolyState();
}

class _PianolyState extends State<Pianoly> {
  @override
  Widget build(BuildContext context) {
    void playBackTone(int soundNumber) {
      final player = AudioCache();
      player.play('note$soundNumber.wav');
    }

    Expanded pianoKini({Color color, int soundNumber}) {
      return Expanded(
        child: FlatButton(
          onPressed: () {
            playBackTone(soundNumber);
          },
          color: color,
        ),
      );
    }

    return MaterialApp(
      home: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            pianoKini(color: Colors.black, soundNumber: 1),
            pianoKini(color: Colors.white, soundNumber: 2),
            pianoKini(color: Colors.black, soundNumber: 3),
            pianoKini(color: Colors.white, soundNumber: 4),
            pianoKini(color: Colors.black, soundNumber: 5),
            pianoKini(color: Colors.white, soundNumber: 6),
            pianoKini(color: Colors.black, soundNumber: 7),
          ],
        ),
      ),
    );
  }
}
