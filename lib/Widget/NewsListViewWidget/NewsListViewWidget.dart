import 'package:flutter/material.dart';
import 'package:newsapp/Widget/CategoryWidget/CategoryWidget.dart';
import 'package:newsapp/Widget/components/componentsWidget.dart';

class NewsListViewWidget extends StatelessWidget {
  const NewsListViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated
      (physics: const BouncingScrollPhysics(),
      itemBuilder: (context , index)=> const CategoryWidget(),
        separatorBuilder: (context , index)=> mySizedBox( ) ,
        itemCount: 10,
    );
  }
}
