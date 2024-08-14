import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/Screen/WebViewScreen/WebViewScreen.dart';
import 'package:newsapp/Widget/components/componentsWidget.dart';
import 'package:newsapp/models/ResultsModel/ResultsModel.dart';
import 'package:webview_flutter/webview_flutter.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({super.key, required this.resultsModel});

  final ResultsModel resultsModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: InkWell(
        onTap: (){
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            _buildImage(context),
            _sizedBox(),
            buildTextTitle(
              tittle: resultsModel.tittle,
            ),
            _sizedBox(),
            buildTextSubtitle(
                subTitle: resultsModel.subTittle ?? 'Unknown subTittle'),
            _sizedBox(),
            _buildFooter(),
          ],
        ),
      ),
    );
  }

  Widget _buildImage(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: CachedNetworkImage(
        imageUrl: resultsModel.image ?? '',
        height: MediaQuery.of(context).size.height * 0.25,
        width: double.infinity,
        fit: BoxFit.fill,
        placeholder: (context, url) =>
            const Center(child: CircularProgressIndicator()),
        errorWidget: (context, url, error) => const Icon(Icons.error),
      ),
    );
  }

  Widget _buildFooter() {
    return Row(
      children: [
        buildTextSubtitle(
          subTitle: resultsModel.publishedAt ?? 'Unknown Date',
        ),
        const Spacer(),
        buildTextSubtitle(
          subTitle: resultsModel.author ?? 'Unknown Author',
        ),
      ],
    );
  }

  Widget _sizedBox() {
    return const SizedBox(
      height: 10,
    );
  }
}
