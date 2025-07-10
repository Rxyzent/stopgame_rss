import 'package:intl/intl.dart';

extension RssDateFormatter on String {
  String formatRssDate() {
    try {
      final inputFormat = DateFormat("EEE, dd MMM yyyy HH:mm:ss Z", "en_US");
      final dateTime = inputFormat.parse(this, true).toLocal();

      final outputFormat = DateFormat("MMMM dd, HH:mm", "ru");
      return outputFormat.format(dateTime);
    } catch (e) {
      return this;
    }
  }
}
