import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(Xylophone());

class Xylophone extends StatelessWidget {
  // function for playing the sound file
  void playSound(int number) {
    final player = AudioCache();
    player.play('note$number.wav');
  }

  // function to build the key
  Expanded buildKey({Color color, int number}) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          playSound(number);
        },
        child: null,
        color: color,
      ),
    );
  }

  // main body of the app!
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(color: Colors.red, number: 1),
              buildKey(color: Colors.orange, number: 2),
              buildKey(color: Colors.yellow, number: 3),
              buildKey(color: Colors.green, number: 5),
              buildKey(color: Colors.teal, number: 5),
              buildKey(color: Colors.blue, number: 6),
              buildKey(color: Colors.purple, number: 7),
            ],
          ),
        ),
      ),
    );
  }
}
