import 'package:flutter/material.dart';
import 'quizz.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:hexcolor/hexcolor.dart';

Quizz quizz = Quizz();
void main() => runApp(Quizzler());

class Quizzler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Icon> answerIcon = [];

  var alertStyle = AlertStyle(
    animationType: AnimationType.fromTop,
    isCloseButton: false,
    isOverlayTapDismiss: false,
    descStyle: TextStyle(color: Colors.white),
    descTextAlign: TextAlign.start,
    animationDuration: Duration(milliseconds: 500),
    alertBorder: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(5),
      side: BorderSide(
        color: HexColor('#121212'),
      ),
    ),
    titleStyle: TextStyle(
      color: Colors.grey.shade500,
    ),
    backgroundColor: HexColor('#121212'),
    alertAlignment: Alignment.center,
  );

  void checkAnswer(bool userAnswer) {
    bool isCorrect = quizz.getAnswer();
    setState(() {
      if (quizz.isFinished() == true) {
        Alert(
          context: context,
          style: alertStyle,
          title: "Finished",
          desc: "You\'ve completed the quizz",
          buttons: [
            DialogButton(
              color: Colors.deepPurple.shade300,
              child: Text(
                "Restart",
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
              onPressed: () => Navigator.pop(context),
              width: 120,
            ),
          ],
        ).show();
        quizz.restartQuestions();
        answerIcon.clear();
      } else {
        if (userAnswer == isCorrect && answerIcon.length <= 13) {
          answerIcon.add(Icon(
            Icons.check,
            color: Colors.green,
          ));
        } else {
          answerIcon.add(Icon(
            Icons.close,
            color: Colors.red,
          ));
        }
        quizz.changeQuestion();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                quizz.getText(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: TextButton(
              style: TextButton.styleFrom(backgroundColor: Colors.green),
              child: Text(
                'True',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {
                checkAnswer(true);
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: TextButton(
              style: TextButton.styleFrom(backgroundColor: Colors.red),
              child: Text(
                'False',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                checkAnswer(false);
              },
            ),
          ),
        ),
        Row(
          children: answerIcon,
        ),
      ],
    );
  }
}
