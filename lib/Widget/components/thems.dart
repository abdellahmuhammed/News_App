import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

ThemeData lightTheme = ThemeData(
  textTheme: const TextTheme(
    bodyLarge: TextStyle(
      color: Colors.black,
      fontSize: 20.0,
      fontWeight: FontWeight.bold,
    ),
    bodyMedium: TextStyle(
      color: Colors.black,
      fontSize: 14.0,
      fontWeight: FontWeight.normal,
    ),
    titleMedium: TextStyle(
      color: Colors.black,
      fontSize: 14.0,
      fontWeight: FontWeight.normal,
    ),
  ),
  scaffoldBackgroundColor: Colors.white,
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: Colors.white,
    elevation: 20.0,
    selectedItemColor: Colors.blue,
    unselectedItemColor: Colors.black,
    unselectedIconTheme: IconThemeData(
      color: Colors.grey[600],
      size: 30.0,
    ),
    selectedIconTheme: const IconThemeData(
      color: Colors.blue,
      size: 30.0,
    ),
    unselectedLabelStyle: const TextStyle(
        color: Colors.black, fontSize: 18.0, fontWeight: FontWeight.normal),
    selectedLabelStyle: const TextStyle(
        color: Colors.black, fontSize: 20.0, fontWeight: FontWeight.bold),
  ),
  appBarTheme: const AppBarTheme(
    titleSpacing: 20.0,
    centerTitle: true,
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarIconBrightness: Brightness.dark,
    ),
    backgroundColor: Colors.white,
    elevation: 0.0,
    titleTextStyle: TextStyle(
      color: Colors.black,
      fontSize: 20.0,
      fontWeight: FontWeight.bold,
    ),
    iconTheme: IconThemeData(
      color: Colors.black,
    ),
  ),
);
ThemeData darkTheme = ThemeData(
  primarySwatch: Colors.blue,
  drawerTheme: DrawerThemeData(backgroundColor: Colors.black12.withOpacity(.6)),
  secondaryHeaderColor: Colors.white,
  textTheme: const TextTheme(
    bodyLarge: TextStyle(
      color: Colors.white,
      fontSize: 20.0,
      fontWeight: FontWeight.bold,
    ),
    bodyMedium: TextStyle(
      color: Colors.white,
      fontSize: 14.0,
      fontWeight: FontWeight.normal,
    ),
    titleMedium: TextStyle(
      color: Colors.white,
      fontSize: 14.0,
      fontWeight: FontWeight.normal,
    ),
  ),
  scaffoldBackgroundColor: Colors.black,
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: Colors.black12.withOpacity(.6),
    elevation: 20.0,
    selectedItemColor: Colors.blue,
    unselectedItemColor: Colors.white,
    unselectedIconTheme: IconThemeData(
      color: Colors.grey[600],
      size: 30.0,
    ),
    selectedIconTheme: const IconThemeData(
      color: Colors.blue,
      size: 30.0,
    ),
    unselectedLabelStyle: const TextStyle(
        color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.normal),
    selectedLabelStyle: const TextStyle(
        color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.bold),
  ),
  appBarTheme: AppBarTheme(
    titleSpacing: 20.0,
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: Colors.black12.withOpacity(.6),
      statusBarIconBrightness: Brightness.light,
    ),
    backgroundColor: Colors.black12.withOpacity(.6),
    elevation: 0.0,
    titleTextStyle: const TextStyle(
      color: Colors.white,
      fontSize: 20.0,
      fontWeight: FontWeight.bold,
    ),
    iconTheme: const IconThemeData(
      color: Colors.white,
    ),
  ),
);
