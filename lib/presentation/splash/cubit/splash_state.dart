import 'package:freezed_annotation/freezed_annotation.dart';

part 'splash_state.freezed.dart';

@freezed
abstract class SplashBuildable with _$SplashBuildable {
  const factory SplashBuildable({
    @Default(true) bool loading,
    @Default(false) bool error,
  }) = _SplashBuildable;
}

@freezed
abstract class SplashListenable with _$SplashListenable {
  const factory SplashListenable({
    required SplashEffect effect,
}) = _SplashListenable;
}

enum SplashEffect {home,none}