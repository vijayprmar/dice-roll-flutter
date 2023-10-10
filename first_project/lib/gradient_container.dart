import 'package:first_project/dice_roller.dart';
import 'package:flutter/material.dart';

class GraddientContaner extends StatelessWidget {

   GraddientContaner({super.key, required this.colors});
   final List<Color> colors;


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        decoration: BoxDecoration(gradient: LinearGradient(colors: colors)),
        child: const Center(
            child: DiceRoller()
            ));
    //throw UnimplementedError();
  }
}
