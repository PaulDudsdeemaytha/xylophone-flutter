import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int noteNumber) {
    final player = AudioCache();
    player.play('note$noteNumber.wav');
  }

  buildKey({Color color, int whichNote}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(whichNote);
        },
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
              children: <Widget>[
                buildKey(color: Colors.red, whichNote: 1),
                buildKey(color: Colors.blue, whichNote: 2),
                buildKey(color: Colors.green, whichNote: 3),
                buildKey(color: Colors.orange, whichNote: 4),
                buildKey(color: Colors.pink, whichNote: 5),
                buildKey(color: Colors.teal, whichNote: 6),
                buildKey(color: Colors.purple, whichNote: 7),
              ]),
        ),
      ),
    );
  }
}
