// ignore_for_file: file_names

import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/WebServices/NewsServices.dart';
import 'package:newsapp/Widget/CategoryWidget/CategoryWidget.dart';
import 'package:newsapp/Widget/components/componentsWidget.dart';
import 'package:newsapp/models/ResultsModel/ResultsModel.dart';

class BusinessNewsScreen extends StatefulWidget {
  const BusinessNewsScreen({super.key});

  @override
  State<BusinessNewsScreen> createState() => _BusinessNewsScreenState();
}

class _BusinessNewsScreenState extends State<BusinessNewsScreen> {
  List<ResultsModel> resultsList = [];

  @override
  void initState() {
    super.initState();
    getGeneralNews();
  }

  Future<void> getGeneralNews() async {
    resultsList = await NewsServices().getBusinessNews();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return ConditionalBuilder(
      condition: (resultsList.isNotEmpty),
      builder: (context) => ListView.separated(
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) => CategoryWidget(
          articleModel: resultsList[index],
        ),
        separatorBuilder: (context, index) => mySizedBox(),
        itemCount: resultsList.length,
      ),
      fallback: (context) => const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
