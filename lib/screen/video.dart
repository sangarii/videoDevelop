import 'package:flutter/material.dart';
class Video extends StatefulWidget {
  const Video({super.key});

  @override
  State<Video> createState() => _VideoState();
}

class _VideoState extends State<Video> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 200,
      ),
      body: Container(
        color:Colors.white,
        height:50,
        width:50,
      )
    );
  }
}