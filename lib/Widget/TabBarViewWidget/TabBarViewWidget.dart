import 'package:flutter/material.dart';
import 'package:newsapp/Screens/BusinessNewsScreen/BusinessNewsScreen.dart';
import 'package:newsapp/Screens/GeneralNewsScreen/GeneralNewsScreen.dart';
import 'package:newsapp/Screens/ScienceNewsScreen/ScienceNewsScreen.dart';
import 'package:newsapp/Screens/SportsNewsScreen/SportsNewsScreen.dart';
import 'package:newsapp/Screens/TechnologyNewsScreen/TechnologyNewsScreen.dart';

class TabBarViewWidget extends StatelessWidget {
  const TabBarViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const TabBarView(
      children: [
        GeneralNewsScreen(),
        BusinessNewsScreen(),
        SportsNewsScreen(),
        TechnologyNewsScreen(),
        ScienceNewsScreen(),
      ],
    );
  }
}
