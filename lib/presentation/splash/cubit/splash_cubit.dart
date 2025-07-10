import 'dart:async';

import 'package:injectable/injectable.dart';
import 'package:rss_news_app/common/base/base_cubit.dart';
import 'package:rss_news_app/presentation/splash/cubit/splash_state.dart';

@injectable
class SplashCubit extends BaseCubit<SplashBuildable, SplashListenable> {
  SplashCubit() : super(const SplashBuildable()) {
    init();
  }

  void init() async {
    build((buildable) => buildable.copyWith(loading: true, error: false));
    await Future.delayed(const Duration(milliseconds: 150));
    invoke(const SplashListenable(effect: SplashEffect.home));
  }
}
