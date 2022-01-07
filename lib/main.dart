import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    var questions = [
      'What\'s is your favorite color?',
      'What\'s your favorite animal?'
    ];
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('My first app'),
          ),
          body: Column(
            children: [
              Text('The question'),
              RaisedButton(
                child: Text('Answer 1'),
                onPressed: null,
              ),
              RaisedButton(
                child: Text('Answer 2'),
                onPressed: null,
              ),
              RaisedButton(
                child: Text('Answer 3'),
                onPressed: null,
              ),
            ],
          )),
    );
  }
}
