import 'package:flutter/material.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:intro_slider/slide_object.dart';

import 'login/login.dart';


class SliderWidget extends StatefulWidget {
  @override
  _SliderWidgetState createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {
  List<Slide> slides = new List();

  @override
  void initState() {
    super.initState();

    var black = Colors.black;
        slides.add( //สไลด์อันแรก
          new Slide(
            title: "Natural Disaster",
            
            pathImage: "assets/Earthquake.png",
            
            // description:
            //     "1",
            styleDescription:
                TextStyle(height: 1.3, fontSize: 20, color: black),
        backgroundColor: Color(0xffDFD579),
        

      ),
      
    );
    slides.add( //สไลด์อันที่2
      new Slide(
        title: "Emergency",
        pathImage: "assets/sos.png",
        styleDescription:
            TextStyle(fontFamily: 'MyFont',height: 1.3, fontSize: 20, color: Colors.black),
        backgroundColor: Color(0xffDFD579),
        
      ),
    );
    slides.add( //สไลด์อันที่3
      new Slide(
        title: "Chart",
        pathImage: "assets/chart.png",
        styleDescription:
            TextStyle(height: 1.3, fontSize: 20, color: Colors.black),
        backgroundColor: Color(0xffDFD579),
      ),
    );
    slides.add( //สไลด์อันที่4
      new Slide(
        title: "Chats",
        pathImage: "assets/lovechats.png",
        styleDescription:
            TextStyle(height: 1.3, fontSize: 20, color: Colors.black),
        backgroundColor: Color(0xffDFD579),
      ),
    );
  }

  void onDonePress() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => LoginPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new IntroSlider(
      slides: this.slides,
      onDonePress: this.onDonePress,
    );
  }
}