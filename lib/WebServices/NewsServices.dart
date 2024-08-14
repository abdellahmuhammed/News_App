// ignore_for_file: file_names

import 'package:dio/dio.dart';
import 'package:newsapp/models/ResultsModel/ResultsModel.dart';

void main() {
  NewsServices().getGeneralNews();
}

class NewsServices {
  final Dio dio = Dio();
  final String baseUrl = 'https://newsdata.io/api/1/latest?';
  final String apiKey = 'pub_501375468c9fdefe71cc6b5497ca19df8f229';
  late String country = 'eg';

  Future<List<ResultsModel>> getGeneralNews() async {
    var response = await dio.get(
        //https://newsdata.io/api/1/latest?country=eg&apikey=pub_501370dfa999b2ae3876a90bdaa08b4db7b7e
        //https://newsapi.org/v2/top-headlines?country=eg&apiKey=37ae90fa47764c9c8d342af34258b7ed
        '$baseUrl country=$country&apikey=$apiKey&category=world');

    Map<String, dynamic> jasonData = response.data;

    List<dynamic> results = jasonData['results'];

    List<ResultsModel> resultsList = [];

    for (var article in results) {
      ResultsModel resultsModel = ResultsModel(
        image: article['image_url'],
        tittle: article['title'],
        subTittle: article['description'],
        author: article['source_name'],
        publishedAt: article['pubDate'],
      );
      resultsList.add(resultsModel);
    }
    return resultsList;
  }

  Future<List<ResultsModel>> getSportsNews() async {
    var response = await dio.get(
        // https://newsdata.io/api/1/latest?country=eg&apikey=pub_501370dfa999b2ae3876a90bdaa08b4db7b7e
        // https://newsapi.org/v2/top-headlines?country=eg&apiKey=37ae90fa47764c9c8d342af34258b7ed
        '$baseUrl country=$country&apikey=$apiKey&category=sports');

    Map<String, dynamic> jasonData = response.data;

    List<dynamic> results = jasonData['results'];

    List<ResultsModel> resultsList = [];

    for (var article in results) {
      ResultsModel resultsModel = ResultsModel(
        image: article['image_url'],
        tittle: article['title'],
        subTittle: article['description'],
        author: article['source_name'],
        publishedAt: article['pubDate'],
      );
      resultsList.add(resultsModel);
    }
    return resultsList;
  }

  Future<List<ResultsModel>> getBusinessNews() async {
    var response = await dio.get(
        //https://newsdata.io/api/1/latest?country=eg&apikey=pub_501370dfa999b2ae3876a90bdaa08b4db7b7e
        //https://newsapi.org/v2/top-headlines?country=eg&apiKey=37ae90fa47764c9c8d342af34258b7ed
        '$baseUrl country=$country&apikey=$apiKey&category=business');

    Map<String, dynamic> jasonData = response.data;

    List<dynamic> results = jasonData['results'];

    List<ResultsModel> resultsList = [];

    for (var i in results) {
      ResultsModel resultsModel = ResultsModel(
        image: i['image_url'],
        tittle: i['title'],
        subTittle: i['description'],
        author: i['source_name'],
        publishedAt: i['pubDate'],
      );
      resultsList.add(resultsModel);
    }
    return resultsList;
  }

  Future<List<ResultsModel>> getTechnologyNews() async {
    var response =
        await dio.get('$baseUrl country=eg&apikey=$apiKey&category=technology');

    Map<String, dynamic> jsonData = response.data;

    List<dynamic> results = jsonData['results'];

    List<ResultsModel> resultsList = [];

    for (var i in results) {
      ResultsModel resultsModel = ResultsModel(
        image: i['image_url'],
        tittle: i['title'],
        subTittle: i['description'],
        author: i['source_name'],
        publishedAt: i['pubDate'],
      );
      resultsList.add(resultsModel);
    }
    return resultsList;
  }

// Future<dynamic> getGeneralNews() async {
//   Response response = await dio.get(
//       'https://newsapi.org/v2/top-headlines?country=us&apiKey=37ae90fa47764c9c8d342af34258b7ed');
//   Map<String, dynamic> jsonData = response.data;
//   List<dynamic> results = jsonData['results'];
//
//   List<ResultsModel> resultsList = [];
//
//   for (var article in results) {
//     ResultsModel resultsModel = ResultsModel(
//         image: article['urlToImage'],
//         tittle: article['title'],
//         subTittle: article['description'],
//         author: article['author'],
//         publishedAt: article['publishedAt']);
//     resultsList.add(resultsModel);
//   }
// }
}
