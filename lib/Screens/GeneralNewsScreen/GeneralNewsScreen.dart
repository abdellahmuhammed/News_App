import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/WebServices/NewsServices.dart';
import 'package:newsapp/Widget/CategoryWidget/CategoryWidget.dart';
import 'package:newsapp/Widget/components/componentsWidget.dart';
import 'package:newsapp/models/ResultsModel/ResultsModel.dart';

class GeneralNewsScreen extends StatefulWidget {
  const GeneralNewsScreen({super.key});

  @override
  State<GeneralNewsScreen> createState() => _GeneralNewsScreenState();
}

class _GeneralNewsScreenState extends State<GeneralNewsScreen> {
  List<ResultsListModel> resultsList = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getGeneralNews();
  }

  Future<void> getGeneralNews() async {
    resultsList = await NewsServices().getGeneralNews();
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
