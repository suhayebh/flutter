import 'package:flutter/material.dart';

import './title.dart';
import './handler.dart';

void main() => runApp(const AssigmentApp());

class AssigmentApp extends StatefulWidget {
  const AssigmentApp({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _AssigmentState();
  }
}

class _AssigmentState extends State<AssigmentApp> {
  var _text = 'Hello World!';

  void _setText() {
    setState(() {
      _text = 'Hello World! I am clicked';
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Assigment',
        theme: ThemeData(
          primarySwatch: Colors.cyan,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Assigment'),
          ),
          body: ListView(children: [
            AppTitle(_text),
            Handler(_setText),
          ]),
        ));
  }
}
