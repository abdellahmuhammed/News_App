import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/WebServices/NewsServices.dart';
import 'package:newsapp/Widget/CategoryWidget/CategoryWidget.dart';
import 'package:newsapp/Widget/components/componentsWidget.dart';
import 'package:newsapp/models/ResultsModel/ResultsModel.dart';

class TechnologyNewsScreen extends StatefulWidget {
  const TechnologyNewsScreen({super.key});

  @override
  State<TechnologyNewsScreen> createState() => _TechnologyNewsScreenState();
}

class _TechnologyNewsScreenState extends State<TechnologyNewsScreen> {
  List<ResultsModel> resultsList = [];

  @override
  void initState() {
    super.initState();
    getTechnologyNews();
  }

  Future<void> getTechnologyNews() async {
    resultsList = await NewsServices().getTechnologyNews();
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
