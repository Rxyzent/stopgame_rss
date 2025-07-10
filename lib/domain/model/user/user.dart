// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rss_news_app/domain/model/pagination/paginator.dart';

part 'user.freezed.dart';

part 'user.g.dart';

List<User> usersFromJsonList(List<dynamic> jsonList) {
  return jsonList.map((json) => User.fromJson(json)).toList();
}

@freezed
abstract class User with _$User {
  const factory User({int? id, String? phone, String? name}) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
