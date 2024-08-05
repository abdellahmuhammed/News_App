import 'package:dio/dio.dart';
import 'package:newsapp/models/ArticleModel/ArticleModel.dart';


void main(){
  NewsServices(). getGeneralNews();
}


class NewsServices{

  final Dio dio = Dio();


 Future<dynamic> getGeneralNews()async{

   final Response <dynamic> response = await dio.get('https://newsapi.org/v2/top-headlines?country=us&apiKey=37ae90fa47764c9c8d342af34258b7ed');


   Map<String , dynamic> jasonData = response.data;

   List<dynamic> articles =jasonData['articles'];
List <ArticleModel> articleList =[];
for (var element in articles){
  ArticleModel articleModel = ArticleModel(
    image: element['urlToImage'],
    tittle: element['title'],
    subTittle: element['description'],
    author: element['author'],
    publishedAt: element['publishedAt'],
  ) ;
  articleList.add(articleModel);

  print(articleList);
}

  }


}