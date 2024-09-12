// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class StyledText extends StatelessWidget{
   StyledText(this.text,{super.key});

 String text;

  @override
  Widget build(Object context) {
 return
       Text(
              text,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 28.0,
              ),
            );
 
  }
}