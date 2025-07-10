import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:rss_news_app/common/extensions/theme_extensions.dart';
import 'package:rss_news_app/common/router/app_router.dart';

@RoutePage()
class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      backgroundColor: context.colors.onPrimary,
      routes: const [
        HomeRoute(),
        FavoritesRoute(),
      ],
      bottomNavigationBuilder: (_, tabsRouter) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            BottomNavigationBar(
                backgroundColor: context.colors.white,
                showUnselectedLabels: true,
                elevation: 8,
                type: BottomNavigationBarType.fixed,
                currentIndex: tabsRouter.activeIndex,
                onTap: tabsRouter.setActiveIndex,
                selectedLabelStyle: const TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                ),
                unselectedLabelStyle: const TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                ),
                unselectedItemColor: context.colors.primary,
                selectedItemColor: context.colors.primary,
                items: [
                  BottomNavigationBarItem(
                    icon: Icon(
                      Icons.home_outlined,
                      color: context.colors.primary,
                    ),
                    activeIcon: Icon(
                      Icons.home,
                      color: context.colors.primary,
                    ),
                    label: 'Home',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(
                      Icons.favorite_outline_rounded,
                      color: context.colors.primary,
                    ),
                    activeIcon: Icon(
                      Icons.favorite_rounded,
                      color: context.colors.primary,
                    ),
                    label: 'Favorites',
                  ),
                ]),
          ],
        );
      },
    );
  }
}
