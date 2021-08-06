import 'package:flutter/material.dart';

class CardModel extends StatelessWidget {
  CardModel(this.colorin, this.cardChild);

  final Color colorin;
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: colorin,
      ),
    );
  }
}