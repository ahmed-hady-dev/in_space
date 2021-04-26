import 'package:flutter/material.dart';

Color textFieldColor = Colors.grey[50];

OutlineInputBorder borderStyle = OutlineInputBorder(
  borderRadius: BorderRadius.circular(50.0),
  borderSide: BorderSide(color: Colors.grey[50], width: 2.0),
);

const TextStyle kSubLabelStyle = TextStyle(
  color: Colors.white,
  fontSize: 23.0,
  letterSpacing: 3.0,
  fontFamily: 'Gotham',
);
const TextStyle kTextFieldStyle = TextStyle(
  fontFamily: 'Gotham',
  fontSize: 25,
  color: Colors.black87,
);
const TextStyle kWeightNumberStyle = TextStyle(
  fontFamily: 'Gotham',
  fontSize: 35,
  color: Colors.white,
  letterSpacing: 0,
);
const TextStyle kKGStyle = TextStyle(
  fontSize: 16,
  color: Colors.white,
  fontWeight: FontWeight.normal,
);
const TextStyle kInformationTextStyle = TextStyle(
  color: Colors.white,
  fontSize: 20,
  height: 1.2,
  letterSpacing: 0.2,
  fontFamily: 'Gotham',
);
