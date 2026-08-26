import 'package:flutter/material.dart';
import 'package:lab_act_2/dice_roller.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Colors.blue, Colors.green
            ])
          ),
          child: Center(
            child: DiceRoller()
          ),
        ),
      ),
    ),
  );
}