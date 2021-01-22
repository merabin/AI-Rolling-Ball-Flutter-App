import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('AI Rolling Ball'),
          centerTitle: true,
          
        ),
        body: AiBall(),
      ),
      
    )
  );
}

class AiBall extends StatefulWidget {
  @override
  _AiBallState createState() => _AiBallState();
}

class _AiBallState extends State<AiBall> {
  int ballid = 1;
  void rollball(){
    setState(() {
          ballid = Random().nextInt(5)+1;
        });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: FlatButton(
              onPressed: (){
                rollball();
              },
              child: Image.asset('images/ball$ballid.png'),
            ),
          ),
        ],
      ),
    );
  }
}
