import 'package:flutter/material.dart';
import 'dart:math';


class DiceRoller extends StatefulWidget { 
  const DiceRoller({super.key});
  
@override
  State<DiceRoller> createState() {
      return _DiceRollerState();
    }
}

final randomizer = Random();
class _DiceRollerState extends State<DiceRoller> { 
  var currentDiceRoll = 2; 

  void rollDice() { 
    setState(() {
      currentDiceRoll = randomizer.nextInt(3) + 1;
    }); 
    
  }

  @override
  Widget build(context) { 
    return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
            Image.asset(
              'assets/dice-images/dice-$currentDiceRoll.png', 
              width: 400, 
          ),
          // const SizedBox(height: 16), alternative to padding
          TextButton(onPressed: rollDice, 
          style: TextButton.styleFrom(
            padding: const EdgeInsets.all(16),
            foregroundColor: Colors.white, 
            textStyle: const TextStyle(
              fontSize: 30
            )), 
            child: const Text("Click Me")),
          ],
          );
  } 
}