import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rss_news_app/common/base/base_page.dart';
import 'package:rss_news_app/common/extensions/text_extensions.dart';
import 'package:rss_news_app/common/widgets/common_button.dart';
import 'package:rss_news_app/domain/service/colors/static_colors.dart';
import 'package:rss_news_app/presentation/splash/cubit/splash_cubit.dart';
import 'package:rss_news_app/presentation/splash/cubit/splash_state.dart';

@RoutePage()
class SplashPage
    extends BasePage<SplashCubit, SplashBuildable, SplashListenable> {
  const SplashPage({super.key});

  @override
  void listener(BuildContext context, SplashListenable state) {
    super.listener(context, state);
    switch (state.effect) {
      case SplashEffect.home:
        break;
      case SplashEffect.none:
        break;
    }
  }

  @override
  Widget builder(BuildContext context, SplashBuildable state) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: state.loading
              ? const CircularProgressIndicator()
              : state.error
                  ? Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Icon(Icons.error,
                            color: StaticColors.carminePink),
                        const SizedBox(height: 16),
                        "There was an error connecting to the server!"
                            .w(500)
                            .s(18),
                        const SizedBox(height: 16),
                        SizedBox(
                          width: 150,
                          child: CommonButton.elevated(
                            text: 'Try again',
                            onPressed: () => context.read<SplashCubit>().init(),
                          ),
                        ),
                      ],
                    )
                  : const SizedBox.shrink(),
        ),
      ),
    );
  }
}
