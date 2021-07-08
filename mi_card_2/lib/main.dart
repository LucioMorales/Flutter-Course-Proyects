import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static const String _phone = 'tel:+54 9 351 111-1111';
  static const String _mail = 'mailto:a@gmail.com?';

//voy a matar a la gorda
  void _launchPhone() async => await canLaunch(_phone) ? await launch(_phone) : throw 'Could not launch $_phone';
  void _launchMail() async => await canLaunch(_mail) ? await launch(_mail) : throw 'Could not launch $_mail';


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: HexColor('#512da8'),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                child: CircleAvatar(
                  backgroundImage: AssetImage('images/profile.jpeg'),
                  radius: 70,
                ),
              ),
              Text(
                'Lucio Morales Demaria',
                style: TextStyle(
                  fontFamily: 'Lobster',
                  fontSize: 33,
                  color: HexColor('#ba68c8'),
                ),
              ),
              Text(
                'Developer',
                style: TextStyle(
                  fontFamily: 'CreteRound',
                  fontSize: 23,
                  letterSpacing: 0.25,
                  fontWeight: FontWeight.bold,
                  color: HexColor('#ce93d8'),
                ),
              ),
              SizedBox(
                height: 25,
                width: 155,
                child: Divider(
                  color: HexColor('#d1c4e9'),
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                margin: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 25,
                ),
                color: HexColor('#7e57c2'),
                child: ListTile(
                  onTap: () {
                    _launchPhone();
                  },
                  leading: Icon(
                    Icons.phone,
                    color: HexColor('#FFFFFF'),
                  ),
                  title: Text(
                    '+54 351 111 1111',
                    style: TextStyle(
                        fontFamily: 'CreteRound',
                        fontSize: 18,
                        color: HexColor('#FFFFFF')),
                  ),
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                margin: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 25,
                ),
                color: HexColor('#7e57c2'),
                child: ListTile(
                  onTap: () {
                    _launchMail();
                  },
                  leading: Icon(
                    Icons.mail_outline_rounded,
                    color: HexColor('#FFFFFF'),
                  ),
                  title: Text(
                    'a@gmail.com',
                    style: TextStyle(
                      fontFamily: 'CreteRound',
                      fontSize: 16,
                      color: HexColor('#FFFFFF'),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
