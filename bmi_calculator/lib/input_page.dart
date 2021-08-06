import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'card_model.dart';

const bottomContainerHeigth = 55.0;
const bottomContainerColor = Color(0xFFEB1555);
const inactiveCardColor = Color(0xFF1D1E33);
const activeCardColor = Color(0xFF111328);

// enum GenderType {
//   male,
//   female,
//   notSelected
// }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  //GenderType gender = GenderType.notSelected;

  bool maleActive = false;
  bool femaleActive = false;

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
                  child: GestureDetector(
                    onTap: () {setState(() {
                      //gender = GenderType.male;
                      maleActive = true;
                      femaleActive = false;
                    });},
                    child: CardModel(
                      //gender ==  GenderType.male ? activeCardColor : inactiveCardColor,
                      maleActive ? activeCardColor : inactiveCardColor,
                      CardChild(FontAwesomeIcons.mars, 'Male'),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {setState(() {
                      //gender = GenderType.female;
                      maleActive = false;
                      femaleActive = true;
                    });},
                    child: CardModel(
                      //gender == GenderType.female ? activeCardColor : inactiveCardColor,
                      femaleActive ? activeCardColor : inactiveCardColor,
                      CardChild(FontAwesomeIcons.venus, 'Female'),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: CardModel(inactiveCardColor,CardChild(FontAwesomeIcons.venus, ''),),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: CardModel(inactiveCardColor,CardChild(FontAwesomeIcons.mars, ''),),
                ),
                Expanded(
                  child: CardModel(inactiveCardColor,CardChild(FontAwesomeIcons.venus, ''),),
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