// ignore_for_file: file_names, avoid_print

import 'package:flutter/material.dart';

PreferredSizeWidget defaultAppBarHomePage() => AppBar(
      title: defaultTextTitle(text: 'News Cloud'),
      actions: [
        IconButton(
          onPressed: () {
            print('Dark mode');
          },
          icon: const Icon(Icons.dark_mode),
        ),
        IconButton(
          onPressed: () {
            print('Searching mode');
          },
          icon: const Icon(Icons.search),
        ),
      ],
    );

PreferredSizeWidget defaultNewsAppBar({
  required String tittle,
  double fontSize = 25.0,
  FontWeight fontWight = FontWeight.bold,
  Color color = Colors.black,
  int maxLine = 1,
  TextOverflow textOverflow = TextOverflow.ellipsis,
}) =>
    AppBar(
      backgroundColor: Colors.transparent,
      title: Text(
        tittle,
        maxLines: maxLine,
        overflow: textOverflow,
        style: TextStyle(
          fontSize: fontSize,
          fontWeight: fontWight,
          color: color,
        ),
      ),
    );

Widget defaultTextTitle({
  required String text,
  double fontSize = 25.0,
  FontWeight fontWight = FontWeight.bold,
  Color color = Colors.black,
  int maxLine = 1,
  TextOverflow textOverflow = TextOverflow.ellipsis,
}) =>
    Text(
      ' $text',
      maxLines: maxLine,
      textDirection: TextDirection.rtl,
      overflow: textOverflow,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: fontWight,
        color: color,
      ),
    );

Widget defaultTextSubTitle(
        {required String text,
        double fontSize = 14.0,
        FontWeight fontWight = FontWeight.normal,
        Color color = Colors.grey,
        int maxLine = 3,
        TextOverflow textOverflow = TextOverflow.ellipsis,
        TextAlign align = TextAlign.left}) =>
    Text(
      ' $text',
      maxLines: maxLine,
      overflow: textOverflow,
      textAlign: align,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: fontWight,
        color: color,
      ),
    );

Widget mySizedBox({
  Color color = Colors.white,
  double? height = 0,
  double? width = 0,
}) =>
    Container(
      width: width,
      height: height,
      color: color,
    );
