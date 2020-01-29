import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XyllophoneApp());

class XyllophoneApp extends StatelessWidget {
  Widget keynotes({@required Color color,@required int noteNumber}){
   return Expanded(
      child: FlatButton(
        padding: EdgeInsets.all(0),
        child: Container(
          color: color,
         // width: double.infinity,
        ),
        onPressed: (){
          final player = AudioCache();
          player.play("note$noteNumber.wav");
        },

      ),
    );



  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Xyllophone",
      theme: ThemeData.dark(
//        primaryColor: Colors.red,
//        accentColor: Colors.green,
//        scaffoldBackgroundColor: Colors.yellowAccent,
      ),
      home: Scaffold(

        body: SafeArea(
          child: Column(
            children: <Widget>[
              keynotes(color: Colors.red, noteNumber: 1),
              keynotes(color: Colors.orange, noteNumber: 2),
              keynotes(color: Colors.green, noteNumber: 3),
              keynotes(color: Colors.blue, noteNumber: 4),
              keynotes(color: Colors.teal, noteNumber: 5),
              keynotes(color: Colors.purple, noteNumber: 6),
              keynotes(color: Colors.yellow, noteNumber: 7),


//              Expanded(
//            child: FlatButton(
//              padding: EdgeInsets.all(0),
//              child: Container(
//                color: Colors.red,
//                width: double.infinity,
//              ),
//              onPressed: (){
//                final player = AudioCache();
//                player.play("note1.wav");
//              },
//
//            ),
//          ),
//              Expanded(
//                child: FlatButton(
//                  padding: EdgeInsets.all(0),
//                  child: Container(
//                    color: Colors.orange,
//                   // width: double.infinity,
//                  ),
//                  onPressed: (){},
//
//                ),
//              ),
//              Expanded(
//                child: FlatButton(
//                  padding: EdgeInsets.all(0),
//                  child: Container(
//                    color: Colors.yellowAccent,
//                    //width: double.infinity,
//                  ),
//                  onPressed: (){},
//
//                ),
//              ),
//              Expanded(
//                child: FlatButton(
//                  padding: EdgeInsets.all(0),
//                  child: Container(
//                    color: Colors.green,
//                    //width: double.infinity,
//                  ),
//                  onPressed: (){},
//
//                ),
//              ),
//              Expanded(
//                child: FlatButton(
//                  padding: EdgeInsets.all(0),
//                  child: Container(
//                    color: Colors.teal,
//                    //width: double.infinity,
//                  ),
//                  onPressed: (){},
//
//                ),
//              ),
//              Expanded(
//                child: FlatButton(
//                  padding: EdgeInsets.all(0),
//                  child: Container(
//                    color: Colors.blue,
//                    //width: double.infinity,
//                  ),
//                  onPressed: (){},
//
//                ),
//              ),
//              Expanded(
//                child: FlatButton(
//                  padding: EdgeInsets.all(0),
//                  child: Container(
//                    color: Colors.purple,
//                    //width: double.infinity,
//                  ),
//                  onPressed: (){},
//
//                ),
//              ),
            ],
          ),
        ),
      ),
    );
  }
}

