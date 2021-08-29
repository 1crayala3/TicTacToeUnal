import 'package:final_project/homealoneasy.dart';
import 'package:final_project/homealonehard.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Lvl extends StatefulWidget {
  final String characterP1, avatarP1;
  const Lvl({Key? key, required this.characterP1, required this.avatarP1}) : super(key: key);

  @override
  _LvlState createState() => _LvlState();
}

class _LvlState extends State<Lvl> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(),
      body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/UnalCamp1.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                //color: Colors.red,
                padding: EdgeInsets.fromLTRB(6.w,10.h,6.w,8.h),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Container(
                    padding: EdgeInsets.all(25),
                    color: Colors.black,
                    child: Center(
                      child: Text(
                          'Choose    Difficulty',
                          style: TextStyle(color: Colors.white, fontSize: 3.5.h, fontFamily: 'ArcadeF')),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                    MaterialPageRoute(
                        builder: (context) =>
                            BoardAlonePrim(characterP1: widget.characterP1, avatarP1: widget.avatarP1)),
                  );
                },
                child: Container(
                  //color: Colors.cyan,
                  padding: EdgeInsets.fromLTRB(12.w,14.h,12.w,7.h),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Container(
                      padding: EdgeInsets.all(15),
                      color: Colors.lightGreen[700],
                      child: Center(
                        child: Text(
                            'Primiparo',
                            style: TextStyle(color: Colors.black, fontSize: 3.5.h, fontFamily: 'ArcadeF')),
                      ),
                    ),
                  ),
                ),

              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) =>
                      BoardAloneJZ(characterP1: widget.characterP1, avatarP1: widget.avatarP1)),
                  );
                },
                child: Container(
                  //color: Colors.green,
                  padding: EdgeInsets.fromLTRB(12.w,14.h,12.w,10.h),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Container(
                      padding: EdgeInsets.all(15),
                      color: Colors.red[400],
                      child: Center(
                        child: Text('Julio    Zorra',
                            style: TextStyle(color: Colors.black, fontSize: 3.5.h, fontFamily: 'ArcadeF')),
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