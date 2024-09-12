import 'package:flutter/material.dart';
import 'package:drawer_page1/dice/styled_text.dart';

import 'dart:math';

class DiceRoller extends StatefulWidget{
  const DiceRoller({super.key});


  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }

}

class _DiceRollerState extends State<DiceRoller>{

     var currentDiceRoll=2;
  void rollDice() {
 
    setState((){
      currentDiceRoll=Random().nextInt(6)+1;

    });
    print("changing img");
  }

@override
  Widget build(BuildContext context) {
  return Center(
          child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            "assets/images/dice-$currentDiceRoll.png",
            width: 200,
          ),

        const SizedBox(height: 20),
          TextButton(
              onPressed: rollDice,
              style: TextButton.styleFrom(
                // padding: const EdgeInsets.all(8.0),
                foregroundColor: Colors.black,
                textStyle: const TextStyle(fontSize: 20)
              ),
              child: StyledText('Roll dice'))
        ],
      ));
  }

}