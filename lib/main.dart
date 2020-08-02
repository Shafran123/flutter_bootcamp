import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

AudioCache audioPlayer = AudioCache();

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  void playSound(id) {
    audioPlayer.play("note$id.wav");
  }

  Expanded buildKey({int id, Color color}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(id);
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
              buildKey(id: 1, color: Colors.red),
              buildKey(id: 2, color: Colors.green),
              buildKey(id: 3, color: Colors.blue),
              buildKey(id: 4, color: Colors.yellow),
              buildKey(id: 5, color: Colors.pink),
              buildKey(id: 6, color: Colors.orange),
              buildKey(id: 7, color: Colors.indigo),
            ],
          ),
        ),
      ),
    );
  }
}
