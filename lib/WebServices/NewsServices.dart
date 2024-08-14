// ignore_for_file: file_names

import 'package:dio/dio.dart';
import 'package:newsapp/models/ResultsModel/ResultsModel.dart';

class NewsServices {
  final Dio dio = Dio();
  final String baseUrl = 'https://newsdata.io/api/1/latest?';
  final String apiKey = 'pub_506713d4d100085267083a1f66fe38931f323';
  final String country = 'eg';
  final String language = 'ar';


  Future<List<ResultsModel>> getNews({required String category}) async {
    var response = await dio.get(
        //https://newsdata.io/api/1/latest?country=eg&apikey=pub_501370dfa999b2ae3876a90bdaa08b4db7b7e
        //https://newsapi.org/v2/top-headlines?country=eg&apiKey=37ae90fa47764c9c8d342af34258b7ed
        '$baseUrl country=$country&apikey=$apiKey&language=$language&category=$category');

    Map<String, dynamic> jasonData = response.data;

    List<dynamic> results = jasonData['results'];

    List<ResultsModel> resultsList = [];

    for (var article in results) {
      ResultsModel resultsModel = ResultsModel.fromJson(article);
      resultsList.add(resultsModel);
    }
    return resultsList;
  }


}
