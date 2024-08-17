// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:newsapp/Services/NewsServices.dart';
import 'package:newsapp/Widget/CategoryWidget.dart';
import 'package:newsapp/shared/componentsWidget.dart';
import 'package:newsapp/models/ResultsModel.dart';

class BuildNewsListView extends StatefulWidget {
  const BuildNewsListView({super.key, required this.category});

  final String category;

  @override
  State<BuildNewsListView> createState() => _BuildNewsListViewState();
}

class _BuildNewsListViewState extends State<BuildNewsListView> {
  late Future<List<ResultsModel>> newsFuture;

  @override
  void initState() {
    super.initState();
    newsFuture = NewsServices().getNews(category: widget.category);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ResultsModel>>(
        future: newsFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                buildCircularProgressIndicator(),
                buildTextTitle(tittle: 'Data is Loading')
              ],
            );
          } else if (snapshot.hasData && snapshot.data!.isNotEmpty) {
            return NewsListView(resultsList: snapshot.data!);
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else {
            return const Center(child: Text('No sports news available'));
          }
        });
  }
}

class NewsListView extends StatelessWidget {
  const NewsListView({super.key, required this.resultsList});

  final List<ResultsModel> resultsList;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const BouncingScrollPhysics(),
      itemBuilder: (context, index) => CategoryWidget(
        resultsModel: resultsList[index],
      ),
      separatorBuilder: (context, index) => const SizedBox(),
      itemCount: resultsList.length,
    );
  }
}
