import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() =>runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Piano',
      theme: ThemeData(
          primarySwatch: Colors.grey
      ),
      home: PianoBuild(),
    );
  }
}

class PianoBuild extends StatelessWidget{

  final audioCache = AudioCache();

  void playSound(String note) {
    audioCache.play('${note}.wav');
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        backgroundColor: Colors.white70,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            buildKeyMain('1'),
            buildKeyMain('1'),
            buildKeyBlack('1'),
            buildKeyBlack('1'),
            buildKeyBlack('1'),
            buildKeyMain('1'),
            buildKeyBlack('1'),
            buildKeyBlack('C'),
            buildKeyMain('C'),
            buildKeyBlack('C'),
            buildKeyBlack('C'),
            buildKeyBlack('C'),
            buildKeyMain('C'),
            buildKeyBlack('C'),
            buildKeyBlack('C'),
          ],
        ),
      );
  }



  Widget buildKeyBlack(String note) {
    return Expanded(
        flex: 1,
        child: Stack(
          clipBehavior: Clip.none, // overflow is depr.
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  left: 4.0, top: 2.0, bottom: 2.0, right: 20),
              child: Container(
                color: Colors.grey,
                width: double.infinity,
                height: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    playSound(note);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black
                    ), child: null,
                ),
              ),
            ),
            Positioned(
                top: -25,
                child: Container(
                  width: 200,
                  height: 40,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black),
                    onPressed: () {
                      //  playSound('C');
                    },
                    child: null,
                  ),
                )
              )
            ],
          )
        );
  }

  Widget buildKeyMain(String note) {
    return Expanded(
        flex: 1,
        child: Stack(
          clipBehavior: Clip.none, // overflow is depr.
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  left: 4.0, top: 2.0, bottom: 2.0, right: 20),
              child: Container(
                color: Colors.grey,
                width: double.infinity,
                height: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white),
                  onPressed: () {
                    playSound(note);
                  },
                  child: null,
                ),
              ),
            ),
          ],
        )
      );
  }
}


