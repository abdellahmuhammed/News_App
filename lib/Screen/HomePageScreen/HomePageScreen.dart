// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:newsapp/Widget/NewsListViewWidget/NewsListViewWidget.dart';
import 'package:newsapp/Widget/components/componentsWidget.dart';

class HomePageScreen extends StatelessWidget {
  const HomePageScreen(context ,{ super.key, required this.buildDarkMOde,});

 final VoidCallback buildDarkMOde;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: buildHomeAppBar(title: 'Egypt News' , themMode:buildDarkMOde ),
        body: const BuildTabBarView(),
      ),
    );
  }
}

class BuildTabBarView extends StatelessWidget {
  const BuildTabBarView({super.key});

  @override
  Widget build(BuildContext context) {
    return const TabBarView(
      children: [
        BuildNewsListView(category: 'world'),
        BuildNewsListView(category: 'business'),
        BuildNewsListView(category: 'sports'),
        BuildNewsListView(category: 'technology'),
        BuildNewsListView(category: 'science'),
      ],
    );
  }
}

PreferredSizeWidget buildHomeAppBar({required String title ,required VoidCallback themMode , context}) => AppBar(
  title: buildTextTitle(tittle: title ),
  actions: [
    IconButton(
      onPressed: () {
        themMode();
      },
      icon: const Icon(Icons.dark_mode),
    ),
    IconButton(
      onPressed: () {},
      icon: const Icon(Icons.search),
    ),
  ],
  bottom: const TabBar(
    tabs: [
      Tab(
        text: 'General',
        icon: Icon(Icons.all_inclusive_outlined),
      ),
      Tab(
        text: 'Business',
        icon: Icon(Icons.business),
      ),
      Tab(
        text: 'Sports',
        icon: Icon(Icons.sports),
      ),
      Tab(
        text: 'Tech',
        icon: Icon(Icons.computer),
      ),
      Tab(
        text: 'Science',
        icon: Icon(Icons.science),
      ),
    ],
  ),
);

