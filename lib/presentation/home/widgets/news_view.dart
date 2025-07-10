import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:rss_news_app/common/extensions/string_extensions.dart';
import 'package:rss_news_app/common/extensions/text_extensions.dart';
import 'package:rss_news_app/common/extensions/theme_extensions.dart';
import 'package:rss_news_app/domain/model/news/news.dart';

class NewsView extends StatelessWidget {
  const NewsView({super.key, required this.news});

  final News news;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadiusGeometry.circular(8),
            child: AspectRatio(
              aspectRatio: 16 / 9,
              child: CachedNetworkImage(
                height: 100,
                imageUrl: news.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                news.title.w(500).s(16).h(20).c(context.colors.text).copyWith(
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                Row(
                  children: [
                    news.pubDate
                        .formatRssDate()
                        .w(400)
                        .s(14)
                        .h(16)
                        .c(Colors.grey),
                    const Spacer(),
                    IconButton(
                      splashRadius: 20,
                      padding: const EdgeInsets.all(8),
                      constraints: const BoxConstraints(),
                      icon: const Icon(Icons.favorite_border_rounded),
                      onPressed: () {},
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
