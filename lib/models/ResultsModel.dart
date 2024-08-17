// ignore_for_file: file_names

class ResultsModel {
  final String? image;
  final String tittle;
  final String? subTittle;
  final String? author;
  final dynamic publishedAt;
  final String link;

  ResultsModel({
    required this.image,
    required this.tittle,
    required this.subTittle,
    required this.author,
    required this.publishedAt,
    required this.link,
  });

  factory ResultsModel.fromJson(Map<String, dynamic> jsonData) {
    return ResultsModel(
      image: jsonData['image_url'],
      tittle: jsonData['title'],
      subTittle: jsonData['description'],
      author: jsonData['source_name'],
      publishedAt: jsonData['pubDate'],
      link: jsonData['link'],
    );
  }
}
