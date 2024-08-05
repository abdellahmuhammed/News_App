class ArticleModel {
  final String? image;
  final String tittle;
  final String? subTittle;
  final String? author;
  final dynamic publishedAt;

  ArticleModel(
      {required this.image,
      required this.tittle,
      required this.subTittle,
      required this.author,
      required this.publishedAt});

  @override
  String toString() {
    super.toString();
    return '\n image $image \n tittle $tittle \nsubTittle $subTittle \n author $author \npublishedAt $publishedAt';

  }
}
