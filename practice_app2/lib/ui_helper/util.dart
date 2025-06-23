import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart'; // Needed for Colors

TextStyle mTextStyle11({
  Color textColor = Colors.red,
}) {
  return TextStyle(
    fontSize: 11,
    fontWeight: FontWeight.bold,
    color: textColor, // ✅ Applied the textColor
  );
}
