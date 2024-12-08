import 'package:facebook_userinterface/widgets/maintab.dart';
import 'package:flutter/material.dart';

void main(){
   runApp(const FlutterApp());
}
class FlutterApp extends StatelessWidget{
  const FlutterApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Facebook",
        theme: ThemeData(
          primaryColor: Colors.white,
       ),
      home: MainTab(),
      debugShowCheckedModeBanner: false,
    );
    }
}