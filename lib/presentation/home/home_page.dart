import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rss_news_app/common/base/base_page.dart';
import 'package:rss_news_app/common/widgets/base_app_bar.dart';
import 'package:rss_news_app/presentation/home/cubit/home_cubit.dart';
import 'package:rss_news_app/presentation/home/cubit/home_state.dart';
import 'package:rss_news_app/presentation/home/widgets/home_loading_view.dart';
import 'package:rss_news_app/presentation/home/widgets/news_view.dart';

@RoutePage()
class HomePage extends BasePage<HomeCubit, HomeBuildable, HomeListenable> {
  const HomePage({super.key});

  @override
  Widget builder(BuildContext context, HomeBuildable state) {
    final cubit = context.read<HomeCubit>();
    return Scaffold(
      appBar: const BaseAppBar(
        title: 'Игровые новости',
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: loadable(
          loading: state.loading,
          error: state.error,
          loadingView: const HomeLoadingView(),
          builder: () => RefreshIndicator(
            onRefresh: cubit.getNews,
            child: ListView.separated(
              itemBuilder: (BuildContext context, int index) {
                final news = state.news[index];
                return NewsView(news: news);
              },
              separatorBuilder: (__, _) => const Divider(
                color: Colors.grey,
              ),
              itemCount: state.news.length,
            ),
          ),
        ),
      ),
    );
  }
}
