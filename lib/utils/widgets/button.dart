import 'package:flutter/material.dart';
import 'package:meditransparency/data/constants/colors.dart';
import 'package:meditransparency/utils/widgets/reusable_text.dart';

Widget btn({tex, function, style, context}) {
  final style = ElevatedButton.styleFrom(
      primary: ui.primaryclr, //background color of button
      // side: BorderSide(width: 3, color: Colors.brown), //border width and color
      elevation: 3, //elevation of button
      shape: RoundedRectangleBorder(
          //to set border radius to button
          borderRadius: BorderRadius.circular(20)),
      padding: EdgeInsets.all(2) //content padding inside button
      );
  final size = MediaQuery.of(context).size;
  return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      height: 60,
      width: size.width,
      child: ElevatedButton(
        style: style,
        onPressed: function,
        child: text(tex, ui.backgroundclr, 25.0, FontWeight.w500, FontStyle.normal),
      ));

}
//     ),
//   );
// }
