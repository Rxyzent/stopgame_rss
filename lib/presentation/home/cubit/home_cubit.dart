import 'package:injectable/injectable.dart';
import 'package:rss_news_app/common/base/base_cubit.dart';
import 'package:rss_news_app/domain/repo/home_repo.dart';
import 'package:rss_news_app/presentation/home/cubit/home_state.dart';

@injectable
class HomeCubit extends BaseCubit<HomeBuildable, HomeListenable> {
  HomeCubit(this._repo) : super(const HomeBuildable()) {
    getNews();
  }

  final HomeRepo _repo;

  Future<void> getNews() => callable(
        future: _repo.getNews(),
        buildOnStart: () => buildable.copyWith(loading: true, error: false),
        buildOnData: (news) => buildable.copyWith(news: news),
        buildOnError: (e) => buildable.copyWith(loading: false, error: true),
        buildOnDone: () => buildable.copyWith(loading: false, error: false),
      );
}
