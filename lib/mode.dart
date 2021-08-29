import 'package:final_project/friend.dart';
import 'package:flutter/material.dart';
import 'friend.dart';
import 'alonech.dart';
import 'package:sizer/sizer.dart';

class Mode extends StatefulWidget {

  @override
  _ModeState createState() => _ModeState();
}

class _ModeState extends State<Mode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/Che.jpg"),
            fit: BoxFit.cover,
          ),
        ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [

              GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => AloneCh()),
                    );
                  },
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(10.w, 27.h, 10.w, 10.h),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Container(
                        padding: EdgeInsets.all(2.5.h),
                        color: Colors.black,
                        child: Center(
                          child: Text(
                              'Play   By   Yourself',
                              style: TextStyle(color: Colors.white, fontSize: 3.h, fontFamily: 'ArcadeF')),
                        ),
                      ),
                    ),
                  ),

                ),

                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Friend()),
                    );
                  },
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(10.w, 6.h, 10.w, 10.h),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Container(
                        padding: EdgeInsets.all(2.5.h),
                        color: Colors.white,
                        child: Center(
                          child: Text('Play     with     a     friend',
                              style: TextStyle(color: Colors.black, fontSize: 3.h, fontFamily: 'ArcadeF')),
                        ),
                      ),
                  ),
                ),
              )
            ],
          )
      ),
    );
  }
}