import 'package:injectable/injectable.dart';
import 'package:intl/intl.dart';
import 'package:rss_news_app/data/home/home_api.dart';
import 'package:rss_news_app/domain/model/news/news.dart';
import 'package:rss_news_app/domain/repo/home_repo.dart';
import 'package:xml/xml.dart';

@Injectable(as: HomeRepo)
class HomeRepoImpl extends HomeRepo {
  HomeRepoImpl(this._api);

  final HomeApi _api;

  @override
  Future<List<News>> getNews() async {
    final response = await _api.getNews();
    final document = XmlDocument.parse(response.data.toString());
    final items = document.findAllElements('item');
    return items.map(News.fromXml).toList();
  }



}
