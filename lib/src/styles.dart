import 'package:flutter/material.dart';

TextStyle textStyle(
        {FontWeight fontWeight = FontWeight.normal,
        double fontSize = 14,
        Color color = const Color(0xff000000)}) =>
    TextStyle(
      color: color,
      fontFamily: 'Mulish',
      fontSize: fontSize,
      fontWeight: fontWeight,
    );

List<BoxShadow> shadow() {
  return [
    BoxShadow(
      color: Colors.grey.withOpacity(0.5),
      spreadRadius: 2,
      blurRadius: 5,
      offset: const Offset(0, 1), // changes position of shadow
    ),
  ];
}
