import 'package:flutter/material.dart';


ThemeData lightTheme(BuildContext context) {
  return _buildTheme(
      context,
      textColor: Colors.black,
      backgroundColor: Colors.white);
}

ThemeData darkTheme(BuildContext context) {
  return _buildTheme(
    context,
    textColor: Colors.white,
    backgroundColor: Colors.grey.shade900,
  );
}

ThemeData _buildTheme(BuildContext context,
    {required Color textColor, required Color backgroundColor}) {

  return ThemeData(
    textTheme: TextTheme(
      titleLarge: TextStyle(
        color: textColor,
        fontSize: 25.0,
        fontWeight: FontWeight.bold,
      ),
      bodyLarge: TextStyle(
        color: textColor,
        fontSize: 14.0,
        fontWeight: FontWeight.normal,
      ),
    ),
    scaffoldBackgroundColor: backgroundColor,
    appBarTheme: AppBarTheme(
      backgroundColor:  backgroundColor,
      elevation: 0.0,
      titleTextStyle: TextStyle(
        color: textColor,
        fontSize: 20.0,
        fontWeight: FontWeight.bold,
      ),
      iconTheme: IconThemeData(
        color: textColor,
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      // text Form Filed
      filled: true, // عشان تعرف
      fillColor: backgroundColor.withOpacity(0.1),
      labelStyle: TextStyle(
        color: textColor,
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
      ),
    ),
  );
}
