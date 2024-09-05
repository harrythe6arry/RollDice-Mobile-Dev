import 'package:flutter/material.dart';
import 'package:flutter_application_test/gradient_container.dart';



void main() {
  
  runApp(
    MaterialApp( // const helps optimize performance
      home: Scaffold(
        body: GradientContainer(
          const [Colors.blue, Colors.green],
        ),
      ),
    ),
  ); 
}





