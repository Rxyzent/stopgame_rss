import 'package:rss_news_app/domain/model/news/news.dart';

abstract class HomeRepo{
  Future<List<News>> getNews();
}