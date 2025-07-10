import 'package:freezed_annotation/freezed_annotation.dart';

part 'base_model.freezed.dart';
part 'base_model.g.dart';

@freezed
abstract class BaseModel with _$BaseModel {
  const factory BaseModel({
    bool? success,
    dynamic data,
    Error? error,
  }) = _BaseModel;

  factory BaseModel.fromJson(Map<String, dynamic> json) =>
      _$BaseModelFromJson(json);
}

@freezed
abstract class Error with _$Error {
  const factory Error({
    String? message,
    int? code,
  }) = _Error;

  factory Error.fromJson(Map<String, dynamic> json) =>
      _$ErrorFromJson(json);
}
