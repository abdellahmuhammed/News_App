import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/Screen/WebViewScreen.dart';
import 'package:newsapp/models/ResultsModel.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({super.key, required this.resultsModel});

  final ResultsModel resultsModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => WebViewScreen(url: resultsModel.link),
            ),
          );
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            _buildImage(context),
            _sizedBox(),
            buildTittleText(context),
            _sizedBox(),
            buildDescriptionText(context,
                description:
                    '${resultsModel.subTittle != resultsModel.tittle ? resultsModel.subTittle : 'وصف الخبر غير متاح حاليا'}'),
            _sizedBox(),
            _buildFooter(context),
          ],
        ),
      ),
    );
  }

  Text buildDescriptionText(BuildContext context,
      {required String description}) {
    return Text(
      description,
      style: Theme.of(context).textTheme.bodyLarge,
      textAlign: TextAlign.right,
      maxLines: 3,
      overflow: TextOverflow.ellipsis,
    );
  }

  Text buildTittleText(BuildContext context) {
    return Text(
      resultsModel.tittle,
      textAlign: TextAlign.right,
      maxLines: 1,
      textDirection: TextDirection.rtl,
      overflow: TextOverflow.ellipsis,
      style: Theme.of(context).textTheme.titleLarge,
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

  Widget _buildFooter(BuildContext context) {
    return Row(
      children: [
        buildDescriptionText(
          context,
          description: resultsModel.author ?? 'مؤلف غير معروف',
        ),
        const Spacer(),
        buildDescriptionText(
          context,
          description: resultsModel.publishedAt ?? 'تاريخ النشر غير معروف',
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
