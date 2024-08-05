

import 'package:flutter/material.dart';
import 'package:newsapp/Widget/TabBarViewWidget/TabBarViewWidget.dart';
import 'package:newsapp/Widget/defaultAppBArHomePAgeScreen/defaultAppBArHomePAgeScreen.dart';

class HomePageScreen extends StatelessWidget {
  const HomePageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: defaultAppBArHomePAgeScreen(),
        body: const TabBarViewWidget(),
      ),
    );
  }
}
