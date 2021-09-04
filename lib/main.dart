import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(Magic8Ball());
}

class Magic8Ball extends StatelessWidget {
  const Magic8Ball({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Magic Ball'),
          backgroundColor: Colors.blue[700],
        ),
        body: Container(
          color: Colors.blue,
          child: MagicBallApp(),
        ),
      ),
    );
  }
}

class MagicBallApp extends StatefulWidget {
  const MagicBallApp({Key? key}) : super(key: key);

  @override
  _MagicBallAppState createState() => _MagicBallAppState();
}

class _MagicBallAppState extends State<MagicBallApp> {
  int randomAnswer = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Expanded(
        child: TextButton(
          child: Image.asset('images/ball$randomAnswer.png'),
          onPressed: () {
            setState(() {
              randomAnswer = Random().nextInt(4) + 1;
            });
          },
        ),
      ),
    );
  }
}
