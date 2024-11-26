import 'package:disease_app/screen/front.dart';
import 'package:disease_app/screen/video.dart';
import 'package:disease_app/screen/video_info.dart';
import 'package:flutter/material.dart';
import 'screen/home.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
       title: 'video application',
      theme:ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: home(),
    );
  }
}