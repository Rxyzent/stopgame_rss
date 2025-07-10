import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:rss_news_app/presentation/splash/splash_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends _$AppRouter {
  @override
  final List<AutoRoute> routes = [
    //initial
    AutoRoute(page: SplashRoute.page, initial: true),

  ];
}
