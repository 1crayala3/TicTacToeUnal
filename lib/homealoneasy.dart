import 'package:final_project/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';
import 'package:sizer/sizer.dart';
import 'package:audioplayers/audioplayers.dart';

class BoardAlonePrim extends StatefulWidget {
  final String characterP1, avatarP1;
  const BoardAlonePrim(
      {
        Key? key,
        required this.characterP1,
        required this.avatarP1,}) : super(key: key);

  @override
  _BoardAlonePrimState createState() => _BoardAlonePrimState();
}

class MainPage2 extends StatefulWidget {
  final String characterP1;
  const MainPage2({Key? key, required this.characterP1,}) : super(key: key);

  @override
  _BoardAlonePrimState createState() => _BoardAlonePrimState();
}



class _BoardAlonePrimState extends State<BoardAlonePrim> {

  List<String> exOrO = ['','','','','','','','','',];
  int turn = 0;
  int xScr = 0;
  int oScr = 0;
  int drawCount = 0;
  var random = new Random();
  bool someoneWon = false;
  bool _deactTch = false;
  final audioplyr = AudioCache();
  bool mchnBlckFlg = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Flexible(
              flex: 5,
              child: Container(
                //color: Colors.red,
                padding: EdgeInsets.zero,
                //height: 20.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children:[
                    Container(
                      //color: Colors.red,
                      padding: EdgeInsets.fromLTRB(1.w, 5.5.h, 3.w, 0.h),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(widget.characterP1, style: TextStyle(color: Colors.white, fontSize: 3.h, fontFamily: 'ArcadeF')),
                          Padding(
                            padding: EdgeInsets.fromLTRB(0.w, 2.h, 0.w, 2.h),
                            child: CircleAvatar(
                              backgroundImage: AssetImage(widget.avatarP1),
                              radius: 6.5.h,
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(0.1.h),
                            child: Row(
                              children: [
                                Text('X', style: TextStyle(color: Colors.white, fontSize: 3.5.h, fontFamily: 'ArcadeF')),
                                Text('  =  ', style: TextStyle(color: Colors.white, fontSize: 3.h, fontFamily: 'ArcadeF')),
                                Text(xScr.toString(), style: TextStyle(color: Colors.lightGreen[600], fontSize: 3.5.h, fontFamily: 'ArcadeF')),
                              ],
                            ),
                          ),

                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(3.w, 5.5.h, 1.w, 0.h),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [

                          Text('Puppet', style: TextStyle(color: Colors.white, fontSize: 3.h, fontFamily: 'ArcadeF')),
                          Padding(
                            padding: EdgeInsets.fromLTRB(0.w, 2.h, 0.w, 2.h),
                            child: CircleAvatar(
                              backgroundImage: AssetImage('assets/Duquexd.jpg'),
                              radius: 6.5.h,
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(0.1.h),
                            child: Row(
                              children: [
                                Text('O', style: TextStyle(color: Colors.white, fontSize: 3.5.h, fontFamily: 'ArcadeF')),
                                Text('  =  ', style: TextStyle(color: Colors.white, fontSize: 3.h, fontFamily: 'ArcadeF')),
                                Text(oScr.toString(), style: TextStyle(color: Colors.lightGreen[600], fontSize: 3.5.h, fontFamily: 'ArcadeF')),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

            Flexible(
              flex: 9,
              child: AbsorbPointer(
                absorbing: _deactTch,
                child: Container(
                  //color: Colors.cyan,
                  child: GridView.builder(
                      padding: EdgeInsets.zero,
                      itemCount: 9,
                      gridDelegate:
                      SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,),
                      itemBuilder: (BuildContext context, int index) {
                        return GestureDetector(
                          onTap: (){

                            touched(index);

                          },
                          child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white30)
                              ),
                              child: Center(
                                child: Text(exOrO[index],
                                    style: TextStyle(color: Colors.white, fontSize: 10.h, fontFamily: 'ArcadeF')),
                              )),
                        );
                      }),
                ),
              ),
            ),
            Flexible(
              flex: 2,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => MyApp()));
                },
                child: Container(
                  height: 7.h,
                  //color: Colors.red,
                  padding: EdgeInsets.fromLTRB(30.w, 0.h, 30.w, 2.5.h),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Container(
                      color: Colors.lightGreen[600],
                      child: Center(
                          child: Text('Exit',
                              style: TextStyle(color: Colors.black, fontSize: 3.5.h, fontFamily: 'ArcadeF')),
                        ),
                    ),
                    ),
                  ),
                ),

              ),

          ],
        ),
      ),
    );
  }



  void touched (int n) async {

    setState(() {

      someoneWon = false;
      _deactTch = true;
      mchnBlckFlg = false;

      if (exOrO[n] == ''){
        exOrO[n] = 'X';
        turn++;
        drawCount++;
        mchnBlckFlg = true;
      }

      victory();

    });


    await Future.delayed(Duration(milliseconds: 500), () {

      setState(() {

        if(someoneWon == false && mchnBlckFlg == true){

          dumbMachine();
          victory();
        }
      });

    });

    _deactTch = false;

  }

  void victory(){

    //Rows
    if ((exOrO[0] == exOrO[1] &&
        exOrO[1] == exOrO[2] &&
        exOrO[0] != '') ||
        (exOrO[3] == exOrO[4] &&
            exOrO[4] == exOrO[5] &&
            exOrO[3] != '') ||
        (exOrO[6] == exOrO[7] &&
            exOrO[7] == exOrO[8] &&
            exOrO[6] != '')){
      someoneWon = true;
    }

    //Columns
    if ((exOrO[0] == exOrO[3] &&
        exOrO[3] == exOrO[6] &&
        exOrO[0] != '') ||
        (exOrO[1] == exOrO[4] &&
            exOrO[4] == exOrO[7] &&
            exOrO[1] != '') ||
        (exOrO[2] == exOrO[5] &&
            exOrO[5] == exOrO[8] &&
            exOrO[2] != '')){
      someoneWon = true;
    }

    //Diagonals
    if ((exOrO[0] == exOrO[4] &&
        exOrO[4] == exOrO[8] &&
        exOrO[0] != '') ||
        (exOrO[2] == exOrO[4] &&
            exOrO[4] == exOrO[6] &&
            exOrO[2] != '')){
      someoneWon = true;
    }

    else if (drawCount == 9 && someoneWon == false){
      weHaveADraw();
    }

    if (someoneWon == true) {
      if(turn % 2 == 0){
        weHaveAWinner('Puppet');
        oScr++;
      } else {
        weHaveAWinner(widget.characterP1);
        xScr++;
      }
    }

  }


  void weHaveAWinner(String defeater) {

    Color defColor = Colors.white;

    if (defeater == widget.characterP1){

      defColor = Colors.lightGreen;

      if (widget.characterP1 == 'Dolly'){
        audioplyr.play('Dolly.mp3');
      }
      else if (widget.characterP1 == 'Mantilla'){
        audioplyr.play('Mantilla.mp3');
      }
      else if (widget.characterP1 == 'Jalopez'){
        audioplyr.play('Jalopez.mp3');
      }
      else if (widget.characterP1 == 'Jonatan'){
        audioplyr.play('Jonatan.mp3');
      }

    } else {

      defColor = Colors.redAccent;
      audioplyr.play('Duque.mp3');

    }



    showDialog(barrierDismissible: false, context: context, builder: (BuildContext context){

      return AlertDialog(
        titlePadding: EdgeInsets.all(3.h),
        actionsPadding: EdgeInsets.all(0.1.h),
        buttonPadding: EdgeInsets.all(2.h),
        shape: RoundedRectangleBorder(side: BorderSide.none, borderRadius: BorderRadius.all(Radius.circular(30.0))),
        backgroundColor: Colors.grey[800],
        title: Center(child: Text("  " + defeater + '     Wins!',
            style: TextStyle(color: defColor, fontFamily: 'ArcadeF', fontSize: 4.h))
        ),
        actions: [
          Center(
            child: TextButton(
              child: Text('Play Again', style: TextStyle(color: Colors.white, fontFamily: 'Popkorn', fontSize: 5.h)),
              onPressed: (){
                resetBoard();
                Navigator.of(context).pop();
              },
            ),
          ),
          SimpleDialogOption(
            child: Center(
              child: Icon(
                  Icons.play_arrow,
                  color: Colors.white,
                  size: 5.h),
            ),
            onPressed: (){
              resetBoard();
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    }
    );
  }


  void weHaveADraw() {
    showDialog(barrierDismissible: false, context: context, builder: (BuildContext context){
      return AlertDialog(
        titlePadding: EdgeInsets.all(3.h),
        actionsPadding: EdgeInsets.all(0.1.h),
        buttonPadding: EdgeInsets.all(2.h),
        shape: RoundedRectangleBorder(side: BorderSide.none, borderRadius: BorderRadius.all(Radius.circular(30.0))),
        backgroundColor: Colors.grey[800],
        title: Center(child: Text("It's   a   Draw",
            style: TextStyle(color: Colors.white60, fontFamily: 'ArcadeF', fontSize: 4.h))
        ),
        actions: [
          Center(
            child: TextButton(
              child: Text('Play Again', style: TextStyle(color: Colors.white, fontFamily: 'Popkorn', fontSize: 5.h)),
              onPressed: (){
                resetBoard();
                Navigator.of(context).pop();
              },
            ),
          ),
          SimpleDialogOption(
            child: Center(
              child: Icon(
                  Icons.play_arrow,
                  color: Colors.white,
                  size: 5.h),
            ),
            onPressed: (){
              resetBoard();
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    }
    );
  }




  void resetBoard(){

    setState(() {
      for(int i=0; i<9; i++){
        exOrO[i] = '';
      }
    });

    drawCount = 0;
    turn = 0;
  }

  void dumbMachine(){

    for (int i=0; i<=50; i++){
      int rand = random.nextInt(9);
      if (exOrO[rand] == ''){
        exOrO[rand] = 'O';
        break;
      } else {
        continue;
      }
    }
    turn++;
    drawCount++;

  }



}