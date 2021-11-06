import 'package:backstack/OyunEkrani.dart';
import 'package:backstack/main.dart';
import 'package:flutter/material.dart';

class SonucEkrani extends StatefulWidget{

  @override
  _SonucEkraniState createState() => _SonucEkraniState();
}
  class _SonucEkraniState extends State<SonucEkrani> {

@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(
title: Text("Sonuç Ekranı"),
),
body: Center(

child: Column(

mainAxisAlignment: MainAxisAlignment.center,
children: <Widget>[
  ElevatedButton(
      child: Text("Tekrar Oyna"),
      style: ElevatedButton.styleFrom(
        primary: Colors.pink,),
      onPressed:(){
        Navigator.push(context, MaterialPageRoute(builder: (context) => Anasayfa()));
      }
  ),

  ElevatedButton(
      child: Text("Anasayfaya Dön"),
      style: ElevatedButton.styleFrom(
        primary: Colors.pink,),
      onPressed:(){
        Navigator.of(context).popUntil((route) => route.isFirst);
      }
  ),

],
),
),
);
}
}