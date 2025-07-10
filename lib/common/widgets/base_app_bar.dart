import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:rss_news_app/common/extensions/text_extensions.dart';
import 'package:rss_news_app/common/extensions/theme_extensions.dart';

class BaseAppBar extends StatelessWidget implements PreferredSizeWidget {
  const BaseAppBar({
    super.key,
    this.title,
    this.actions,
    this.centerTitle = true,
    this.leading,
    this.hasIcon = false,
    this.bottom,
  });

  final String? title;
  final bool centerTitle;
  final List<Widget>? actions;
  final Widget? leading;
  final bool hasIcon;
  final PreferredSizeWidget? bottom;

  @override
  Widget build(BuildContext context) {
    final canPop = context.router.canPop();
    return AppBar(
      elevation: 0,
      automaticallyImplyLeading: false,
      iconTheme: IconThemeData(color: context.colors.text),
      leading: leading ?? (canPop ? appBarLeading(context) : null),
      centerTitle: centerTitle,
      title: (title ?? '').w(500).s(18).c(context.colors.text),
      backgroundColor: context.colors.onPrimary,
      bottom: bottom ??
          const PreferredSize(
            preferredSize: Size.fromHeight(1),
            child: Divider(
              color: Colors.black,
            ),
          ),
      actions: actions,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(52);
}

Widget appBarLeading(BuildContext context) {
  return GestureDetector(
    onTap: () => context.router.maybePop(),
    child: Container(
      padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(32),
        color: context.colors.window,
      ),
      child: Center(
        child: Icon(
          Icons.arrow_back_ios_new,
          color: context.colors.text,
        ),
      ),
    ),
  );
}
