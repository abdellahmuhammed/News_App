import 'package:flutter/material.dart';
import 'package:newsapp/Widget/NewsListViewWidget/NewsListViewWidget.dart';

class BusinessNewsScreen extends StatelessWidget {
  const BusinessNewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      backgroundColor: Colors.white,
      body: NewsListViewWidget(),
    );
  }
}
