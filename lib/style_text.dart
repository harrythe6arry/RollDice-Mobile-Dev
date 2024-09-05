import 'package:flutter/material.dart';

class StyledText extends StatelessWidget { 

  const StyledText(this.text, {super.key}); 

  final String text; // this will only set once

  @override  
   Widget build(context) { 
    return Text(
          text, 
            style: const TextStyle(
              fontSize: 30, 
              color: Color.fromARGB(255, 255, 255, 255),
              ),
        );
    }
  }