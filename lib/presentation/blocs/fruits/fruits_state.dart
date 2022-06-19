part of 'fruits_bloc.dart';

enum FruitsLoadingState {
  loading,
  loaded,
  error,
}

@freezed
class FruitsStateShared with _$FruitsStateShared {
  const factory FruitsStateShared({
    required FruitsLoadingState fruitsLoadingState,
    required List<Fruit> fruits,
    required Map<String, String> imageReferences,
    String? mostFruitsKey,
    int? mostFruitsValue,
  }) = _FruitsStateShared;
}

@freezed
class FruitsState with _$FruitsState {
  const factory FruitsState.initial(
      {required FruitsStateShared shared}) = _Initial;
}