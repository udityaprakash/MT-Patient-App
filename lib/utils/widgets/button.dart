import 'package:flutter/material.dart';
import 'package:meditransparency/data/constants/colors.dart';
import 'package:meditransparency/utils/widgets/reusable_text.dart';

Widget btn({tex, function, style, context}) {
  final style = ElevatedButton.styleFrom(
      primary: ui.primaryclr,
      elevation: 3,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20)),
      padding: EdgeInsets.all(2)
      );
  final size = MediaQuery.of(context).size;
  return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      height: 60,
      width: size.width,
      child: ElevatedButton(
        style: style,
        onPressed: function,
        child: text(tex, ui.backgroundclr, 25.0, FontWeight.w500),
      ));

}
