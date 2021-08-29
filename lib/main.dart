import 'package:final_project/mode.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:sizer/sizer.dart';

//import 'home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Intro(),
    );
  },);
  }
}

class Intro extends StatefulWidget {

  @override
  _IntroState createState() => _IntroState();
}

class _IntroState extends State<Intro> {

  final colorsAn = [
  Colors.lightGreen,
  Colors.redAccent,
  Colors.lime

  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Flexible(
                flex: 2,
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 1.h, horizontal: 5.h),
                  //color: Colors.red,
                  child: Center(
                      child: Text('Tic Tac Toe', style: TextStyle(color: Colors.white, fontSize: 7.0.h, fontFamily: 'Popkorn'))
                  ),
                ),
              ),
              Flexible(
                flex: 6,
                child: Container(
                  //color: Colors.lightGreen,
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 0.5.h, horizontal: 10.h),
                    child: Image.asset('assets/UnalLogo.png', height: 30.0.h),
                  ),
                ),
              ),
              Flexible(
                flex: 1,
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 1.h, horizontal: 8.h),
                  //color: Colors.cyan,
                  child: Center(
                    child: AnimatedTextKit(
                      animatedTexts: [
                        TypewriterAnimatedText('Unal  Version',
                            textStyle: TextStyle(color: Colors.white, fontSize: 4.0.h, fontFamily: 'ArcadeF'),
                          speed: const Duration(milliseconds: 200),
                        )],
                      repeatForever: true,
                  )
                  )
                ),
              ),
              Flexible(
                flex: 2,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Mode()),
                    );
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 4.h, horizontal: 7.h),
                    //color: Colors.red,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Container(
                        padding: EdgeInsets.all(20),
                        color: Colors.white,
                        child: Center(
                          child: Text('Play  Game', style: TextStyle(color: Colors.black, fontSize: 4.5.h, fontFamily: 'ArcadeF')),
                        ),
                      ),
                    ),
                  ),

                ),
              )
            ],

          ),
        )
    );
  }
}



