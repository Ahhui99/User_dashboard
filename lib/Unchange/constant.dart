import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

// ignore: prefer_const_constructors
final TextStyle titleStyle = TextStyle(
  fontWeight: FontWeight.w500,
  fontSize: 20,
  // color: HexColor('242565'),
  color: Colors.blue,
);

const TextStyle textTitle = TextStyle(
  fontWeight: FontWeight.bold,
  fontSize: 15,
  // color: HexColor('242565'),
);

const TextStyle textContent = TextStyle(
  fontSize: 12,
  // color: HexColor('242565'),
);
const TextStyle textContentTitle = TextStyle(
  fontWeight: FontWeight.w600,
  fontSize: 12,
  // color: HexColor('242565'),
);

final ButtonStyle flatButtonStyle = TextButton.styleFrom(
  backgroundColor: Colors.black26, minimumSize: Size(88, 40),maximumSize: Size(100, 40),
  padding: EdgeInsets.symmetric(horizontal: 16.0),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(20.0)),
  ),
);