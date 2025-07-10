import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:rss_news_app/common/extensions/theme_extensions.dart';
import 'package:rss_news_app/presentation/main/cubit/main_cubit.dart';
import 'package:rss_news_app/presentation/main/cubit/main_state.dart';

import 'common/base/base_builder.dart';
import 'common/base/base_listener.dart';
import 'common/di/injection.dart';
import 'common/router/app_router.dart';
import 'common/widgets/display/display_widget.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await initializeDateFormatting('ru', null);

  await configureDependencies();

  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.white,
  ));

  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<MainCubit>(),
      child: BaseBuilder<MainCubit, MainBuildable, MainListenable>(
        properties: (buildable) => [buildable.themeMode],
        builder: (context, state) {
          return DisplayWidget(
            child: MaterialApp.router(
                title: 'rss_stopgame',
                debugShowCheckedModeBanner: false,
                routerConfig: getIt<AppRouter>().config(),
                locale: const Locale('ru','RU'),
                color: context.colors.primary,
                theme: context.lightTheme,
                darkTheme: context.darkTheme,
                themeMode: state.themeMode ? ThemeMode.light : ThemeMode.dark,
                builder: (context, child) {
                  return BaseListener<MainCubit, MainBuildable, MainListenable>(
                    listener: (state) async {
                      switch (state.effect) {
                        case MainEffects.update:
                          break;
                        case MainEffects.none:
                          break;
                      }
                    },
                    child: child,
                  );
                }),
          );
        },
      ),
    );
  }
}
