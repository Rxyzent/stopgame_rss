// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginator.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaginatorImpl _$$PaginatorImplFromJson(Map<String, dynamic> json) =>
    _$PaginatorImpl(
      currentPage: (json['current_page'] as num?)?.toInt(),
      perPage: (json['per_page'] as num?)?.toInt(),
      hasMore: json['has_more'] as bool?,
      itemsCount: (json['items_count'] as num?)?.toInt(),
      totalCount: (json['total_count'] as num?)?.toInt(),
      pagesCount: (json['pages_count'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$PaginatorImplToJson(_$PaginatorImpl instance) =>
    <String, dynamic>{
      'current_page': instance.currentPage,
      'per_page': instance.perPage,
      'has_more': instance.hasMore,
      'items_count': instance.itemsCount,
      'total_count': instance.totalCount,
      'pages_count': instance.pagesCount,
    };
