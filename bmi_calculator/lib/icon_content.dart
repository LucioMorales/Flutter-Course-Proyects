import 'package:flutter/material.dart';

const bottomTextStyle = TextStyle(
  fontSize: 18.0,
  color: Color(0xFF8D8E98),
);

class cardChild extends StatelessWidget {
  cardChild(this.icon, this.bottomText);

  final IconData icon;
  final String bottomText;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 80.0,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          bottomText,
          style: bottomTextStyle,
        ),
      ],
    );
  }
}
