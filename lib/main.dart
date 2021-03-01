import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bomba',
      theme: ThemeData(
        primaryColor: Color(0xFFc99e4f),
        brightness: Brightness.light,
      ),
      home: MusicPage(),
      );
  }
}

class MusicPage extends StatelessWidget {
  void playsound(int num) {
    final player = AudioCache();
    player.play('note$num.wav');
  }
 Expanded buildkey({Color color, int soundNum}) {
    return Expanded(
              child: FlatButton(
                color: color,
                onPressed: () {
                  playsound(soundNum);
                },
                child: null,
              ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          crossAxisAlignment:CrossAxisAlignment.stretch,
          children: <Widget>[
            buildkey(color: Colors.red, soundNum: 1),
            buildkey(color: Colors.orange, soundNum: 2),
            buildkey(color: Colors.yellow, soundNum: 3),
            buildkey(color: Colors.green, soundNum: 4),
            buildkey(color: Colors.teal, soundNum: 5),
            buildkey(color: Colors.blue, soundNum: 6),
            buildkey(color: Colors.purple, soundNum: 7),


          ],
        ),
      ),
    );
  }
}
