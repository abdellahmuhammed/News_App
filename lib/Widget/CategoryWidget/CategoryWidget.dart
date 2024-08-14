// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:newsapp/Widget/components/componentsWidget.dart';
import 'package:newsapp/models/ResultsModel/ResultsModel.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({super.key, required this.articleModel});

  final ResultsModel articleModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: articleModel.image == null
                ? const CircularProgressIndicator() // مش شغاله ابقي شوفها بعدين
                : Image.network(
                    '${articleModel.image}',
                    fit: BoxFit.fill,
                    height: MediaQuery.of(context).size.height * .35,
                    width: MediaQuery.of(context).size.width * 1,
                  ),
          ),
          mySizedBox(height: 10),
          defaultTextTitle(text: articleModel.tittle),
          mySizedBox(height: 10),
          defaultTextSubTitle(
              text: articleModel.subTittle ?? '', align: TextAlign.right),
          mySizedBox(height: 10),
          Row(
            children: [
              defaultTextSubTitle(
                text: articleModel.publishedAt ?? '',
              ),
              const Spacer(),
              defaultTextSubTitle(
                text: articleModel.author ?? '',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
