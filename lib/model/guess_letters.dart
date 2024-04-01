import 'package:flutter/material.dart';

Widget guessLetter(String chars, bool guessed){
  return Container(
    alignment: Alignment.center,
    padding: EdgeInsets.all(10),
      height: 40,
    width: 40,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12),
      color: Colors.white,
    ),
    child: Visibility(
      visible: !guessed,
      child: Center(
        child: Text(chars, style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),),
      ) ,));

}
