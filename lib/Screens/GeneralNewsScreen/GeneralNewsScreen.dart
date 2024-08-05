import 'package:flutter/material.dart';
import 'package:newsapp/Widget/NewsListViewWidget/NewsListViewWidget.dart';

main() {
  const GeneralNewsScreen();
}

class GeneralNewsScreen extends StatelessWidget {
  const GeneralNewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: NewsListViewWidget(),
    );
  }
}
