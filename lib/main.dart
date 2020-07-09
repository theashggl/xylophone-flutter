import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void sound(int x) {
    final player = AudioCache();
    player.play('note$x.wav');
  }

  Expanded buildkey({Color color, int number}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          sound(number);
        },
        child: Container(),
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
            children: <Widget>[
              buildkey(
                color: Colors.red, number: 1
              ),
              buildkey(color: Colors.orange,number: 2),
              buildkey(color: Colors.yellow,number: 3),
              buildkey(color: Colors.green,number: 4),
              buildkey(color: Colors.green.shade900,number: 5),
              buildkey(color: Colors.blue,number: 6),
              buildkey(color: Colors.purple,number: 7),
            ],
          ),
        ),
      ),
    );
  }
}
