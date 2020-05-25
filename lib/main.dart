import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        title: 'The Magic 8-ball',
        home: BallPage(),
        color: Colors.indigo,
      ),
    );

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black45,
        title: Text('Ask me anything'),
      ),
      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballState = 1;

  void _rollBall() {
    setState(() {
      ballState = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.indigo,
      child: Center(
        child: FlatButton(
          onPressed: () => _rollBall(),
          child: Image.asset('images/ball$ballState.png'),
        ),
      ),
    );
  }
}
