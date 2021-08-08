import 'package:flutter/material.dart';
import 'constants.dart';

class CardModel extends StatelessWidget {
  final Color colorin;
  final Widget cardChild;
  final VoidCallback? onPress;

  CardModel({this.colorin=kInactiveCardColor, this.cardChild=const Text(''),this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: colorin,
        ),
      ),
    );
  }
}