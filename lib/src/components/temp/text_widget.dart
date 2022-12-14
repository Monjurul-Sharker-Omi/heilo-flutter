// ignore_for_file: unused_import, prefer_const_constructors

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

Widget text(
  context,
  text,
  size,
  color, {
  fontfamily = 'RegularPopins',
  bold = false,
  alignText = TextAlign.start,
  maxLines = 2,
}) {
  return Text(
    text,
    textAlign: alignText,
    maxLines: maxLines,
    overflow: TextOverflow.ellipsis,
    style: TextStyle(
      color: color,
      fontSize: size,
      fontFamily: fontfamily,
      // fontSize: AppSizes.dynamicWidth(context, size),
      fontWeight: bold == true ? FontWeight.w600 : FontWeight.normal,
    ),
  );
}

Widget richTextWidget(
    context, text1, text2, size1, size2, page, color1, color2, push) {
  return RichText(
    textAlign: TextAlign.center,
    text: TextSpan(
      children: [
        TextSpan(
          text: text1,
          style: TextStyle(
            fontSize: size1,
            color: color1,
          ),
        ),
        page == ""
            ? TextSpan(
                text: text2,
                style: TextStyle(
                  fontSize: size2,
                  color: color2,
                  fontWeight: FontWeight.bold,
                ),
              )
            : TextSpan(
                text: text2,
                style: TextStyle(
                  fontSize: size2,
                  decoration: TextDecoration.underline,
                  color: color2,
                  fontWeight: FontWeight.bold,
                ),
              ),
      ],
    ),
  );
}

Widget boldPopinText(String text, double fontSize, Color poppinColor) {
  return Text(
    text,
    style: TextStyle(
      fontFamily: 'Poppins',
      color: poppinColor,
      fontSize: fontSize,
      fontWeight: FontWeight.bold,
    ),
  );
}
