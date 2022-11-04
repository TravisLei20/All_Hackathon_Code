import 'package:flutter/material.dart';
import 'package:flutter_course/products.dart';

import './product_manager.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,

        // colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.deepOrange)
        //       .copyWith(secondary: Colors.deepPurple)),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('EasyList'),
        ),
        body: ProductManager(startingProduct: 'passed in value'),
      ),
    );
  }
}
