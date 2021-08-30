import 'package:flutter/material.dart';
import 'home.dart';
import 'package:sizer/sizer.dart';

class Friend2 extends StatefulWidget {
  final String characterP1, avatarP1;

  const Friend2({Key? key, required this.characterP1, required this.avatarP1}) : super(key: key);

  @override
  _Friend2State createState() => _Friend2State();
}

class _Friend2State extends State<Friend2> {

  String characterP2 = '';
  String avatarP2 = '';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Colors.lightGreen[700],
          body: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Flexible(
                  flex: 5,
                  child: Container(
                    height: 500.h,
                    padding: EdgeInsets.all(3.h),
                    child: Center(
                        child: Text('Player 2', style: TextStyle(color: Colors.black, fontSize: 10.h, fontFamily: 'Popkorn'))
                    ),
                  ),
                ),

                Flexible(
                  flex: 2,
                  child: Container(
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
                    padding: EdgeInsets.fromLTRB(3.w, 3.h, 3.w, 3.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        GestureDetector(
                          onTap: () {
                            characterP2 = 'Dolly';
                            avatarP2 = 'assets/Dolly.png';
                            Navigator.push(context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      BoardFriend(characterP2: characterP2,
                                          characterP1:widget.characterP1,
                                          avatarP1: widget.avatarP1,
                                          avatarP2: avatarP2)),
                            );
                          },
                          child: CircleAvatar(
                            backgroundImage: AssetImage('assets/Dolly.png'),
                            radius: 8.0.h,
                          ),

                        ),
                        GestureDetector(
                          onTap: () {
                            characterP2 = 'Mantilla';
                            avatarP2 = 'assets/Mantilla.jpg';
                            Navigator.push(context,
                              MaterialPageRoute(builder: (context) =>
                                  BoardFriend(characterP2: characterP2,
                                      characterP1:widget.characterP1,
                                      avatarP1: widget.avatarP1,
                                      avatarP2: avatarP2)),
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
                    padding: EdgeInsets.fromLTRB(3.w, 3.h, 3.w, 3.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        GestureDetector(
                          onTap: () {
                            characterP2 = 'Jalopez';
                            avatarP2 = 'assets/Jalopez.png';
                            Navigator.push(context,
                              MaterialPageRoute(builder: (context) =>
                                  BoardFriend(characterP2: characterP2,
                                      characterP1:widget.characterP1,
                                      avatarP1: widget.avatarP1,
                                      avatarP2: avatarP2)),
                            );
                          },
                          child: CircleAvatar(
                            backgroundImage: AssetImage('assets/Jalopez.png'),
                            radius: 8.0.h,
                          ),

                        ),
                        GestureDetector(
                          onTap: () {
                            characterP2 = 'Jonatan';
                            avatarP2 = 'assets/Jonatan.jpg';
                            Navigator.push(context,
                              MaterialPageRoute(builder: (context) =>
                                  BoardFriend(characterP2: characterP2,
                                      characterP1:widget.characterP1,
                                      avatarP1: widget.avatarP1,
                                      avatarP2: avatarP2)),
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