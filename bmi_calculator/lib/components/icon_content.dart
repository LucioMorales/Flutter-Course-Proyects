import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';


class CardChild extends StatelessWidget {
  CardChild(this.icon, this.bottomText);

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
          color: Color(0xFFFFFFFF),
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          bottomText,
          style: kBottomTextStyle,
        ),
      ],
    );
  }
}
