import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rss_news_app/domain/model/news/news.dart';

part 'home_state.freezed.dart';

@freezed
class HomeBuildable with _$HomeBuildable {
  const factory HomeBuildable({
    @Default(true) bool loading,
    @Default(false) bool error,
    @Default([]) List<News> news,
  }) = _HomeBuildable;
}

@freezed
class HomeListenable with _$HomeListenable {
  const factory HomeListenable() = _HomeListenable;
}
