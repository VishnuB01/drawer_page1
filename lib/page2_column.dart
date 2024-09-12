import 'package:drawer_page1/dice/dice_roller.dart';

import 'package:flutter/material.dart';

class Page2column extends StatelessWidget {
  const Page2column({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container( 
          decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 103, 58, 183),
            Color.fromARGB(255, 81, 197, 98)
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: const Column(
        
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          DiceRoller(),
        ],
       
      ),
    );
  }
}
