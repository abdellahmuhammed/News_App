import 'package:flutter/material.dart';
import 'package:newsapp/Screen/HomePageScreen/HomePageScreen.dart';
import 'package:newsapp/Widget/components/thems.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}


class _MyAppState extends State<MyApp> {

  bool isDark = false;

  void buildDarkMOde(){

    setState(() {
      isDark =!isDark;
    });
  }

  @override
  Widget build(BuildContext context) {
    return     MaterialApp(
      debugShowCheckedModeBanner: false,
      theme:lightTheme,
      darkTheme:darkTheme ,
      themeMode: isDark ? ThemeMode.dark : ThemeMode.light,
      home:   HomePageScreen(buildDarkMOde:buildDarkMOde, context,),
    );
  }
}


