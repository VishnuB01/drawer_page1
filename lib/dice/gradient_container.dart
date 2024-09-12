import 'package:flutter/material.dart';



// ignore: must_be_immutable
class GradientContainer extends StatelessWidget {
   GradientContainer({super.key});

  var activeDiceImage="assets/images/dice-2.png";

  void rollDice() {
    activeDiceImage="assets/images/dice-3.png";
    print("changing img");
  }

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
    );
  
  }
}
