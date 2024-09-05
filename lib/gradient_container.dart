import 'package:flutter/material.dart';
import 'package:flutter_application_test/dice_roller.dart';
import 'package:flutter_application_test/style_text.dart';


const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;



class GradientContainer extends StatelessWidget {

  GradientContainer(this.colors, {super.key}); 

  List<Color> colors;

  @override
  Widget build(context) { 
    return Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: colors,
              begin: startAlignment,
              end: endAlignment,
            ),
          ),
          child: const Center(
            child: DiceRoller(), 
          ),
    );
  }
}
