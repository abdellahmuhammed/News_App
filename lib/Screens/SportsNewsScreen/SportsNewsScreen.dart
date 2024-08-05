import 'package:flutter/material.dart';
import 'package:newsapp/Widget/NewsListViewWidget/NewsListViewWidget.dart';
import 'package:newsapp/Widget/components/componentsWidget.dart';

class SportsNewsScreen extends StatelessWidget {
  const SportsNewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: const NewsListViewWidget(),
    );
  }
}
