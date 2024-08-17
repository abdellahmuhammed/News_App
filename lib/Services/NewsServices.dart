// ignore_for_file: file_names

import 'package:dio/dio.dart';
import 'package:newsapp/models/ResultsModel.dart';

class NewsServices {
  final Dio dio = Dio();
  final String baseUrl = 'https://newsdata.io/api/1/latest?';
  final String apiKey = 'pub_506713d4d100085267083a1f66fe38931f323';
  final String country = 'eg';
  final String language = 'ar';


  Future<List<ResultsModel>> getNews({required String category}) async {
    var response = await dio.get(
        //https://newsdata.io/api/1/latest?country=eg&apikey=pub_506713d4d100085267083a1f66fe38931f323
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
