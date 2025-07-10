import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';
import 'package:xml/xml.dart';

part 'news.freezed.dart';

@freezed
class News with _$News {
  const factory News({
    required String title,
    required String link,
    required String imageUrl,
    required String description,
    required String pubDate,
  }) = _News;

  factory News.fromXml(XmlElement item) {
    final enclosure = item.getElement('enclosure');
    final imageUrl = enclosure?.getAttribute('url') ?? '';
    return News(
      title: item.getElement('title')?.innerText.trim() ?? '',
      link: item.getElement('link')?.innerText.trim() ?? '',
      imageUrl: imageUrl,
      description: item.getElement('description')?.innerText.trim() ?? '',
      pubDate: item.getElement('pubDate')?.innerText.trim() ?? '',
    );
  }

}
