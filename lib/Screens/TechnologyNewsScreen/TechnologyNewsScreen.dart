import 'package:flutter/material.dart';
import 'package:newsapp/Widget/NewsListViewWidget/NewsListViewWidget.dart';
import 'package:newsapp/Widget/components/componentsWidget.dart';

class TechnologyNewsScreen extends StatelessWidget {
  const TechnologyNewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: NewsListViewWidget(),
    );
  }
}
