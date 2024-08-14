// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:newsapp/Widget/NewsListViewWidget/NewsListViewWidget.dart';

class ScienceNewsScreen extends StatelessWidget {
  const ScienceNewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: NewsListViewWidget(),
    );
  }
}
