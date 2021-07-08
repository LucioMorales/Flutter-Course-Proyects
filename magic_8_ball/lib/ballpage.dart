import 'package:flutter/material.dart';
import 'dart:math';
import 'package:hexcolor/hexcolor.dart';


class BallPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: HexColor('#1976D2'),
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Ask me anything bitch',
            style: TextStyle(
              fontFamily: 'Oswald',
              fontSize: 25,
            ),
          ),
          backgroundColor: HexColor('#1A237E'),
        ),
        body: Magic8Ball(),
      ),
    );
  }
}

class Magic8Ball extends StatefulWidget {
  Magic8Ball({Key? key}) : super(key: key);

  @override
  _Magic8BallState createState() => _Magic8BallState();
}

class _Magic8BallState extends State<Magic8Ball> {
  int ballnumber = 1;

  void changenumber() {
    setState(() {
      ballnumber = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Expanded(
          child: Center(
            child: TextButton(
                onPressed: () {
                  changenumber();
                },
                child: Image.asset('images/ball$ballnumber.png')),
          ),
        ),
      ],
    );
  }
}