import 'package:freezed_annotation/freezed_annotation.dart';

part 'main_state.freezed.dart';

@freezed
abstract class MainBuildable with _$MainBuildable {
  const factory MainBuildable({
    @Default(true) bool themeMode,
    @Default(false) bool connection,
    String? language,
  }) = _MainBuildable;
}

@freezed
abstract class MainListenable with _$MainListenable {
  const factory MainListenable({required MainEffects effect}) = _MainListenable;
}

enum MainEffects { update, none }
