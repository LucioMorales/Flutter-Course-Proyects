import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'card_model.dart';

const bottomContainerHeigth = 55.0;
const bottomContainerColor = Color(0xFFEB1555);
const cardColor = Color(0xFF1D1E33);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: CardModel(
                    cardColor,
                    cardChild(FontAwesomeIcons.mars, 'Male'),
                  ),
                ),
                Expanded(
                  child: CardModel(
                    cardColor,
                    cardChild(FontAwesomeIcons.venus, 'Female'),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: CardModel(cardColor),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: CardModel(cardColor),
                ),
                Expanded(
                  child: CardModel(cardColor),
                ),
              ],
            ),
          ),
          Container(
            color: bottomContainerColor,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomContainerHeigth,
          )
        ],
      ),
    );
  }
}