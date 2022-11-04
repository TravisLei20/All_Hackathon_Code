import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('flutter is fun!',
                style: TextStyle(fontSize: 30.5, color: Colors.white)),
          ),
          backgroundColor: Colors.white,
          body: Center(
            child: Container(
              child: const Text('learning flutter'),
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(10),
              color: Colors.green,
              height: 100,
              width: 200,
            ),
          )),
    );
  }
}
