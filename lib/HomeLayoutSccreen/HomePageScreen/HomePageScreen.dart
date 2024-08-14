// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:newsapp/WebServices/NewsServices.dart';
import 'package:newsapp/Widget/TabBarViewWidget/TabBarViewWidget.dart';
import 'package:newsapp/Widget/defaultAppBArHomePAgeScreen/defaultAppBArHomePAgeScreen.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({super.key});

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  @override
  void initState() {
    super.initState();

    NewsServices().getGeneralNews();
  }

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
