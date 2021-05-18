import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:math';
void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    // var mediaquery = MediaQuery.of(context).size;
    return MaterialApp(
      home: Mainpage(),
    );
  }
}

class Mainpage extends StatefulWidget {
  @override
  _MainpageState createState() => _MainpageState();
}

class _MainpageState extends State<Mainpage> {
  int leftDiceNumber = 1;
  int righttDiceNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red.shade500,
      appBar: AppBar(
        backgroundColor: Colors.red.shade800,
        title: Text("Dice"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: InkWell(
                    onTap: () {
                      randomFunc();
                    },
                    child: Image(
                      image: AssetImage("assets/images/dice$leftDiceNumber.png"),
                    ),
                  ),
                ),
              ),
              // SizedBox(width: 30.0,),

              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: InkWell(
                    onTap: () {
                      randomFunc();
                    },
                    child: Image(
                      image: AssetImage("assets/images/dice$righttDiceNumber.png"),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  void randomFunc() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      righttDiceNumber = Random().nextInt(6) + 1;
    });
  }
}
