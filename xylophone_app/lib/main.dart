import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  void _playSound(int number) {
    final player = AudioCache();
    player.play('note$number.wav');
  }

  Widget _buildKey({Color color=Colors.white, int soundNumber=1}) {
    return Expanded(
      child: ElevatedButton(
        onPressed: () {
          _playSound(soundNumber);
        },
        style: ElevatedButton.styleFrom(primary: color),
        child: Text(''),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              _buildKey(color: Colors.red, soundNumber: 1),
              _buildKey(color: Colors.orange, soundNumber: 2),
              _buildKey(color: Colors.yellow, soundNumber: 3),
              _buildKey(color: Colors.green, soundNumber: 4),
              _buildKey(color: Colors.teal, soundNumber: 5),
              _buildKey(color: Colors.blue, soundNumber: 6),
              _buildKey(color: Colors.purple, soundNumber: 7)
            ],
          ),
        ),
      ),
    );
  }
}
