import 'package:final_project/friend2.dart';
import 'package:flutter/material.dart';

class Friend extends StatefulWidget {

  @override
  _FriendState createState() => _FriendState();
}

class _FriendState extends State<Friend> {

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
                  flex: 2,
                  child: Container(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: Center(
                        child: Text('Player 1', style: TextStyle(color: Colors.black, fontSize: 75.0, fontFamily: 'Popkorn'))
                    ),
                  ),
                ),

                Flexible(
                  flex: 1,
                  child: Container(
                    padding: const EdgeInsets.fromLTRB(0,5,0,70),
                    child: Center(
                        child: Text('choose   your   character ',
                            style: TextStyle(color: Colors.white, fontSize: 25.0, fontFamily: 'ArcadeF'))
                    ),
                  ),
                ),
                Flexible(
                  flex: 2,
                  child: Container(
                    padding: const EdgeInsets.fromLTRB(0,10,0,60),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          onTap: () {
                            characterP1 = 'Dolly';
                            avatarP1 = 'assets/Dolly.png';
                            Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Friend2(characterP1:characterP1, avatarP1:avatarP1)),
                            );
                          },
                          child: CircleAvatar(
                            backgroundImage: AssetImage('assets/Dolly.png'),
                            radius: 60.0,
                          ),

                        ),
                        GestureDetector(
                          onTap: () {
                            characterP1 = 'Mantilla';
                            avatarP1 = 'assets/Mantilla.jpg';
                            Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Friend2(characterP1:characterP1, avatarP1:avatarP1)),
                            );
                          },
                          child: CircleAvatar(
                            backgroundImage: AssetImage('assets/Mantilla.jpg'),
                            radius: 60.0,
                          ),

                        ),
                      ],
                    ),
                  ),
                ),
                Flexible(
                  flex: 2,
                  child: Container(
                    padding: const EdgeInsets.fromLTRB(0,10,0,10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          onTap: () {
                            characterP1 = 'Jalopez';
                            avatarP1 = 'assets/Jalopez.png';
                            Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Friend2(characterP1:characterP1, avatarP1:avatarP1)),
                            );
                          },
                          child: CircleAvatar(
                            backgroundImage: AssetImage('assets/Jalopez.png'),
                            radius: 60.0,
                          ),

                        ),
                        GestureDetector(
                          onTap: () {
                            characterP1 = 'Jonatan';
                            avatarP1 = 'assets/Jonatan.jpg';
                            Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Friend2(characterP1:characterP1, avatarP1:avatarP1)),
                            );
                          },
                          child: CircleAvatar(
                            backgroundImage: AssetImage('assets/Jonatan.jpg'),
                            radius: 60.0,
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