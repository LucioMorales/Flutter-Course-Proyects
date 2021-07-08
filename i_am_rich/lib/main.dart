import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('I Am Rich Bitch'),
          backgroundColor: Colors.deepPurple[900],
        ),
        backgroundColor: Colors.deepPurple,
        body: Center(
          child: Image(
            image: AssetImage('images/diamond2.png'),
          ),
        ),
      ),
    ),
  );
}
