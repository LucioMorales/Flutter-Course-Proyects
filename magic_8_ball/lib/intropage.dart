import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'ballpage.dart';

class IntroPage extends StatefulWidget {
  @override
  _IntroPageState createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  final introdate = GetStorage();

  void _endWelcomePage(context) {
    Navigator.pop(context);
    Navigator.of(context).push(MaterialPageRoute(builder: (_) => BallPage()));
    introdate.write("displayed", true);
  }

  @override
  Widget build(BuildContext context) {

    const pageDecoration = const PageDecoration(
      pageColor: Colors.blue,
      titleTextStyle: TextStyle(fontFamily: 'Oswald', fontSize: 35),
      bodyTextStyle: TextStyle(fontFamily: 'CreteRound', fontSize: 15),
      imageAlignment: Alignment.center,
    );

    return SafeArea(
      child: Scaffold(
        body: IntroductionScreen(
          showNextButton: true,
          showDoneButton: true,

          next: const Icon(Icons.arrow_forward),
          done: Text('Done'),

          doneColor: Colors.blue,
          nextColor: Colors.blue,

          onDone: () {
            _endWelcomePage(context);
          },
          
          pages: [
            PageViewModel(
              title: "Welcome dear user",
              body: "This app will solve nothing in your life, have fun :D",
              image: Image.asset("images/welcomeImage.png"),
              decoration: pageDecoration),

            PageViewModel(
              title: "How to use",
              body:"The app is simple, ask something, tap the ball \nand see your fate",
              image: Image.asset("images/8ballimage.png"),
              decoration: pageDecoration),
          ],
        ),
      ),
    );
  }
}
