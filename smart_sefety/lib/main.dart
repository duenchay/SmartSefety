import 'package:flutter/material.dart'; //นำเข้าmaterial จากflutter
import 'package:smart_sefety/slider_widget.dart'; //หน้าslider_widget.dart
void main() => runApp(MyApp());   //ประกาศ main 

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Smart Sefety',
      home: SliderWidget(),
    ); //MaterialApp
  }
}