import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  List<String> _products = ['Food Tester'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('EasyLscdsfvsdvist'),
          ),
          body: Column(
            children: [
              Container(
                margin:const EdgeInsets.all(10.0),
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _products.add('Advanced Food Tester');
                    });
                  },
                  child: const Text('Add Product'),
                ),
              ),
              Column(
                children: _products
                    .map((element) => Card(
                  child: Column(
                    children: <Widget>[
                      Image.asset('assets/food.jpeg'),
                      Text(element)
                    ],
                  ),
                ))
                    .toList(),
              ),
            ],
          )),
    );
  }
}
