import 'package:auto_route/auto_route.dart';
import 'package:rss_news_app/presentation/favorites/favorites_page.dart';
import 'package:rss_news_app/presentation/home/home_page.dart';
import 'package:rss_news_app/presentation/main/main_page.dart';
import 'package:rss_news_app/presentation/splash/splash_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends _$AppRouter {
  @override
  final List<AutoRoute> routes = [
    //initial
    AutoRoute(page: SplashRoute.page, initial: true),
    AutoRoute(page: MainRoute.page,path: '/main', children: [
      AutoRoute(page: HomeRoute.page),
      AutoRoute(page: FavoritesRoute.page),
    ]),
  ];
}
