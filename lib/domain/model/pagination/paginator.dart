// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'paginator.g.dart';
part 'paginator.freezed.dart';

@freezed
abstract class Paginator with _$Paginator {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory Paginator({
    int? currentPage,
    int? perPage,
    bool? hasMore,
    int? itemsCount,
    int? totalCount,
    int? pagesCount,
  }) = _Paginator;

  factory Paginator.fromJson(Map<String, dynamic> json) =>
      _$PaginatorFromJson(json);
}
