import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  void answerQuestion() {
    print('Answer Chosen!');
  }

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
                onPressed: answerQuestion,
              ),
              RaisedButton(
                child: Text('Answer 2'),
                onPressed: () =>
                    print('answer 2 choosen object inside an arrow function'),
              ),
              RaisedButton(
                child: Text('Answer 3'),
                onPressed: () {
                  print('answer 3 choosen Using a simple function');
                },
              ),
            ],
          )),
    );
  }
}
