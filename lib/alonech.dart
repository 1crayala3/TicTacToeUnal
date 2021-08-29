import 'package:final_project/alonelvl.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class AloneCh extends StatefulWidget {

  @override
  _AloneChState createState() => _AloneChState();
}

class _AloneChState extends State<AloneCh> {

  String characterP1 = '';
  String avatarP1 = '';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Colors.lightGreen[400],
          body: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Flexible(
                  flex: 5,
                  child: Container(
                    //color: Colors.red,
                    height: 500.h,
                      padding: EdgeInsets.all(3.h),
                    child: Center(
                        child: Text('Player', style: TextStyle(color: Colors.black, fontSize: 10.h, fontFamily: 'Popkorn'))
                    ),
                  ),
                ),

                Flexible(
                  flex: 2,
                  child: Container(
                    //color: Colors.black87,
                    height: 10.h,
                    padding: EdgeInsets.fromLTRB(3.w, 1.h, 3.w, 1.h),
                    child: Center(
                        child: Text('choose   your   character ',
                            style: TextStyle(color: Colors.white, fontSize: 3.5.h, fontFamily: 'ArcadeF'))
                    ),
                  ),
                ),
                Flexible(
                  flex: 5,
                  child: Container(
                    height: 100.h,
                    //color: Colors.white,
                    padding: EdgeInsets.fromLTRB(3.w, 3.h, 3.w, 3.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        GestureDetector(
                          onTap: () {
                            characterP1 = 'Dolly';
                            avatarP1 = 'assets/Dolly.png';
                            Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Lvl(characterP1:characterP1, avatarP1:avatarP1)),
                            );
                          },
                          child: CircleAvatar(
                            backgroundImage: AssetImage('assets/Dolly.png'),
                            radius: 8.0.h,
                          ),

                        ),
                        GestureDetector(
                          onTap: () {
                            characterP1 = 'Mantilla';
                            avatarP1 = 'assets/Mantilla.jpg';
                            Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Lvl(characterP1:characterP1, avatarP1:avatarP1)),
                            );
                          },
                          child: CircleAvatar(
                            backgroundImage: AssetImage('assets/Mantilla.jpg'),
                            radius: 8.0.h,
                          ),

                        ),
                      ],
                    ),
                  ),
                ),
                Flexible(
                  flex: 5,
                  child: Container(
                    //color: Colors.white,
                    padding: EdgeInsets.fromLTRB(3.w, 3.h, 3.w, 3.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        GestureDetector(
                          onTap: () {
                            characterP1 = 'Jalopez';
                            avatarP1 = 'assets/Jalopez.png';
                            Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Lvl(characterP1:characterP1, avatarP1:avatarP1)),
                            );
                          },
                          child: CircleAvatar(
                            backgroundImage: AssetImage('assets/Jalopez.png'),
                            radius: 8.0.h,
                          ),

                        ),
                        GestureDetector(
                          onTap: () {
                            characterP1 = 'Jonatan';
                            avatarP1 = 'assets/Jonatan.jpg';
                            Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Lvl(characterP1:characterP1, avatarP1:avatarP1)),
                            );
                          },
                          child: CircleAvatar(
                            backgroundImage: AssetImage('assets/Jonatan.jpg'),
                            radius: 8.0.h,
                          ),

                        ),
                      ],
                    ),
                  ),
                ),
              ],

            ),
          )
    );
  }
}