import 'package:flutter/material.dart';

class ButtonManager extends StatelessWidget {
  final Function addThing;

  ButtonManager(this.addThing);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        addThing('addedThing');
      },
      child: const Text('Button'),
    );
  }
}
