// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'paginator.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Paginator _$PaginatorFromJson(Map<String, dynamic> json) {
  return _Paginator.fromJson(json);
}

/// @nodoc
mixin _$Paginator {
  int? get currentPage => throw _privateConstructorUsedError;
  int? get perPage => throw _privateConstructorUsedError;
  bool? get hasMore => throw _privateConstructorUsedError;
  int? get itemsCount => throw _privateConstructorUsedError;
  int? get totalCount => throw _privateConstructorUsedError;
  int? get pagesCount => throw _privateConstructorUsedError;

  /// Serializes this Paginator to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Paginator
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaginatorCopyWith<Paginator> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginatorCopyWith<$Res> {
  factory $PaginatorCopyWith(Paginator value, $Res Function(Paginator) then) =
      _$PaginatorCopyWithImpl<$Res, Paginator>;
  @useResult
  $Res call(
      {int? currentPage,
      int? perPage,
      bool? hasMore,
      int? itemsCount,
      int? totalCount,
      int? pagesCount});
}

/// @nodoc
class _$PaginatorCopyWithImpl<$Res, $Val extends Paginator>
    implements $PaginatorCopyWith<$Res> {
  _$PaginatorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Paginator
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = freezed,
    Object? perPage = freezed,
    Object? hasMore = freezed,
    Object? itemsCount = freezed,
    Object? totalCount = freezed,
    Object? pagesCount = freezed,
  }) {
    return _then(_value.copyWith(
      currentPage: freezed == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      perPage: freezed == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int?,
      hasMore: freezed == hasMore
          ? _value.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool?,
      itemsCount: freezed == itemsCount
          ? _value.itemsCount
          : itemsCount // ignore: cast_nullable_to_non_nullable
              as int?,
      totalCount: freezed == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int?,
      pagesCount: freezed == pagesCount
          ? _value.pagesCount
          : pagesCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaginatorImplCopyWith<$Res>
    implements $PaginatorCopyWith<$Res> {
  factory _$$PaginatorImplCopyWith(
          _$PaginatorImpl value, $Res Function(_$PaginatorImpl) then) =
      __$$PaginatorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? currentPage,
      int? perPage,
      bool? hasMore,
      int? itemsCount,
      int? totalCount,
      int? pagesCount});
}

/// @nodoc
class __$$PaginatorImplCopyWithImpl<$Res>
    extends _$PaginatorCopyWithImpl<$Res, _$PaginatorImpl>
    implements _$$PaginatorImplCopyWith<$Res> {
  __$$PaginatorImplCopyWithImpl(
      _$PaginatorImpl _value, $Res Function(_$PaginatorImpl) _then)
      : super(_value, _then);

  /// Create a copy of Paginator
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = freezed,
    Object? perPage = freezed,
    Object? hasMore = freezed,
    Object? itemsCount = freezed,
    Object? totalCount = freezed,
    Object? pagesCount = freezed,
  }) {
    return _then(_$PaginatorImpl(
      currentPage: freezed == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      perPage: freezed == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int?,
      hasMore: freezed == hasMore
          ? _value.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool?,
      itemsCount: freezed == itemsCount
          ? _value.itemsCount
          : itemsCount // ignore: cast_nullable_to_non_nullable
              as int?,
      totalCount: freezed == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int?,
      pagesCount: freezed == pagesCount
          ? _value.pagesCount
          : pagesCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$PaginatorImpl implements _Paginator {
  const _$PaginatorImpl(
      {this.currentPage,
      this.perPage,
      this.hasMore,
      this.itemsCount,
      this.totalCount,
      this.pagesCount});

  factory _$PaginatorImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaginatorImplFromJson(json);

  @override
  final int? currentPage;
  @override
  final int? perPage;
  @override
  final bool? hasMore;
  @override
  final int? itemsCount;
  @override
  final int? totalCount;
  @override
  final int? pagesCount;

  @override
  String toString() {
    return 'Paginator(currentPage: $currentPage, perPage: $perPage, hasMore: $hasMore, itemsCount: $itemsCount, totalCount: $totalCount, pagesCount: $pagesCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaginatorImpl &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.perPage, perPage) || other.perPage == perPage) &&
            (identical(other.hasMore, hasMore) || other.hasMore == hasMore) &&
            (identical(other.itemsCount, itemsCount) ||
                other.itemsCount == itemsCount) &&
            (identical(other.totalCount, totalCount) ||
                other.totalCount == totalCount) &&
            (identical(other.pagesCount, pagesCount) ||
                other.pagesCount == pagesCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, currentPage, perPage, hasMore,
      itemsCount, totalCount, pagesCount);

  /// Create a copy of Paginator
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaginatorImplCopyWith<_$PaginatorImpl> get copyWith =>
      __$$PaginatorImplCopyWithImpl<_$PaginatorImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaginatorImplToJson(
      this,
    );
  }
}

abstract class _Paginator implements Paginator {
  const factory _Paginator(
      {final int? currentPage,
      final int? perPage,
      final bool? hasMore,
      final int? itemsCount,
      final int? totalCount,
      final int? pagesCount}) = _$PaginatorImpl;

  factory _Paginator.fromJson(Map<String, dynamic> json) =
      _$PaginatorImpl.fromJson;

  @override
  int? get currentPage;
  @override
  int? get perPage;
  @override
  bool? get hasMore;
  @override
  int? get itemsCount;
  @override
  int? get totalCount;
  @override
  int? get pagesCount;

  /// Create a copy of Paginator
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaginatorImplCopyWith<_$PaginatorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
