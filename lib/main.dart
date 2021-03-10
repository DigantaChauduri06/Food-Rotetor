import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Choose A Food')),
          backgroundColor: Colors.yellow[800],
        ),
        body: MyApp(),
        backgroundColor: Colors.yellow[300],
      ),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int change = 1;
  int randomgen() {
    return Random().nextInt(5) + 1;
  }

  void pressed() {
    change = randomgen();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Expanded(
            child: Image.asset(
              'images/Food$change.jpg',
              scale: 1.0,
            ),
          ),
          Row(
            children: <Widget>[
              Expanded(
                  child: FloatingActionButton(
                autofocus: false,
                backgroundColor: Colors.pink,
                onPressed: () {
                  setState(
                    () {
                      pressed();
                    },
                  );
                },
              ))
            ],
          ),
        ],
      ),
    );
  }
}
