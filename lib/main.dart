import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  int questionIndex = 0;

  void answerQuestion() {
    setState(() {
      questionIndex = questionIndex + 1;
    });
    print(questionIndex);
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
              Text(questions[questionIndex]),
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
