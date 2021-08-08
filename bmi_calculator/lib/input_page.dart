import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'card_model.dart';
import 'constants.dart';

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
  int height = 100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: CardModel(
                    //gender ==  GenderType.male ? activeCardColor : inactiveCardColor,
                    colorin: maleActive ? kActiveCardColor : kInactiveCardColor,
                    cardChild: CardChild(FontAwesomeIcons.mars, 'Male'),
                    onPress: () {
                      setState(() {
                        //gender = GenderType.male
                        maleActive = true;
                        femaleActive = false;
                      });
                    },
                  ),
                ),
                Expanded(
                  child: CardModel(
                    //gender == GenderType.female ? activeCardColor : inactiveCardColor,
                    colorin:
                        femaleActive ? kActiveCardColor : kInactiveCardColor,
                    cardChild: CardChild(FontAwesomeIcons.venus, 'Female'),
                    onPress: () {
                      setState(() {
                        //gender = GenderType.female
                        maleActive = false;
                        femaleActive = true;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: CardModel(
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Height',
                    style: kBottomTextStyle,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        height.toString(),
                        style: kNumber,
                      ),
                      Text(
                        'cm',
                        style: kBottomTextStyle,
                      ),
                    ],
                  ),
                  Slider(
                    value: height.toDouble(),
                    min: 100.0,
                    max: 250.0,
                    activeColor: kSliderActive,
                    inactiveColor: kSliderInactive,
                    onChanged: (double newValue) {
                      setState(() {
                        height = newValue.round();
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: CardModel(),
                ),
                Expanded(
                  child: CardModel(),
                ),
              ],
            ),
          ),
          Container(
            color: kBottomContainerColor,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: kBottomContainerHeigth,
          )
        ],
      ),
    );
  }
}
