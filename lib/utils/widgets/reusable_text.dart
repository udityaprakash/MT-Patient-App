import 'package:flutter/material.dart';

Widget text(String title, Color color, double fontSize, FontWeight fontWeight ,{align}) {
    return Text(title,
    textAlign: align,
        style: TextStyle(
          color: color,
          fontSize: fontSize,
          fontWeight: fontWeight,
          fontFamily: 'Lato',
          // fontStyle: fontStyle,
        ));
  }
 
