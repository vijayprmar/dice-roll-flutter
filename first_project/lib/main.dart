import 'package:flutter/material.dart';
import 'gradient_container.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.amber,
      body: GraddientContaner(colors: [Colors.blue,Colors.purple],),
    ),
  ));
}


