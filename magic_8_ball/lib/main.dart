import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'intropage.dart';
import 'ballpage.dart';

void main() async{
  await  GetStorage.init();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  final introdate = GetStorage();

  @override
  void initState() { 
    super.initState();
    introdate.writeIfNull("displayed", false);
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        home: introdate.read("displayed") ? BallPage() : IntroPage(),
      );
  }
}
