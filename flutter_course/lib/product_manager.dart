import 'package:flutter/material.dart';

import './products.dart';
import './buttonManager.dart';

class ProductManager extends StatefulWidget {
  final String startingProduct;

  ProductManager({this.startingProduct = 'default value'});

  @override
  State<StatefulWidget> createState() {
    return _ProductManagerState();
  }
}

class _ProductManagerState extends State<ProductManager> {
  final List<String> _products = [];

  @override
  void initState() {
    _products.add(widget.startingProduct);
    super.initState();
  }

  void _addThing(String thing) {
    setState(() {
      _products.add(thing);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            margin: const EdgeInsets.all(10.0),
            child: ButtonManager(_addThing)),
        Products(_products)
      ],
    );
  }
}
