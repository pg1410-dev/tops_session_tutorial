import 'package:dice_app/gradient_container.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: GradientContainer(
          colors: [
            Color.fromARGB(155, 150, 120, 60),
            Color.fromARGB(150, 120, 120, 60)
      ])
    ),
  ));
}

