import 'package:flutter/material.dart';

Widget text(String title, Color color, double fontSize, FontWeight fontWeight,
      FontStyle fontStyle) {
    return Text(title,
        style: TextStyle(
          color: color,
          fontSize: fontSize,
          fontWeight: fontWeight,
          fontStyle: fontStyle,
        ));
  }
 
