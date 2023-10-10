import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class DiceRoller extends StatefulWidget{

  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
   return _DiceRollerState();
  }

}

class _DiceRollerState extends State<DiceRoller>{
  var currentDiceRoll = 2;

  void rollDice() {

    setState(() {
      currentDiceRoll = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.asset(
              "assets/images/$currentDiceRoll.png",
              width: 200,
              height: 200,
              fit: BoxFit.cover,
            )),
        const SizedBox(height: 20,),
        TextButton(
            onPressed: rollDice,
            style: TextButton.styleFrom(
                foregroundColor: Colors.white,

                textStyle: const TextStyle(fontSize: 28)),
            child: const Text("Roll Dice"))
      ],
    );
  }

}