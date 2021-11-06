// @dart=2.9 --no-sound-null-safety
import 'package:backstack/OyunEkrani.dart';
import 'package:backstack/VideoSayfasi.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Oyun Zamanı',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Anasayfa(),
    );
  }
}

class Anasayfa extends StatefulWidget {
  @override
  _AnasayfaState createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Anasayfa"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            ElevatedButton(
              child: Text("Öğrenim Videosu İzle"),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => YoutubePlayer()));
              },
            ),


            ElevatedButton(
              child: Text("Oyuna Başla"),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => OyunEkrani()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
