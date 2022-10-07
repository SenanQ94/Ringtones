// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(Music());
}

class Music extends StatelessWidget {
  const Music({Key? key}) : super(key: key);
  void playMusic(int num) {
    final player = AudioCache();
    player.play('music-$num.mp3');
  }

  @override
  Widget build(BuildContext context) {
    Widget myButton(String name, Color btnColor, int musicNum) {
      return Expanded(
        child: Card(
          color: Colors.blueGrey.withOpacity(0.2),
          elevation: 5,
          child: Padding(
            padding: const EdgeInsets.all(1.0),
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.white),
              ),
              onPressed: () {
                playMusic(musicNum);
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.music_note,
                      color: btnColor,
                      size: 40.0,
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Text(
                      name,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                        color: btnColor,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          title: Text('Ringtones'),
          backgroundColor: Colors.purple,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            myButton('Thunderstorm', Colors.teal, 6),
            myButton('Turkish March', Colors.purple, 7),
            myButton('Chinese Moon', Colors.greenAccent, 2),
            myButton('Funky Guitar', Colors.orange, 3),
            myButton('Blues Final tune', Colors.pink, 5),
            myButton('Trip Hop ChillThe', Colors.black, 1),
            myButton('Blues Harp', Colors.amber, 4),
          ],
        ),
      ),
    );
  }
}
