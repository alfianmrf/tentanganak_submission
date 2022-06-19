// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'fruits_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FruitsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadFruits,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadFruits,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadFruits,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadFruits value) loadFruits,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadFruits value)? loadFruits,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadFruits value)? loadFruits,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FruitsEventCopyWith<$Res> {
  factory $FruitsEventCopyWith(
          FruitsEvent value, $Res Function(FruitsEvent) then) =
      _$FruitsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$FruitsEventCopyWithImpl<$Res> implements $FruitsEventCopyWith<$Res> {
  _$FruitsEventCopyWithImpl(this._value, this._then);

  final FruitsEvent _value;
  // ignore: unused_field
  final $Res Function(FruitsEvent) _then;
}

/// @nodoc
abstract class _$$LoadFruitsCopyWith<$Res> {
  factory _$$LoadFruitsCopyWith(
          _$LoadFruits value, $Res Function(_$LoadFruits) then) =
      __$$LoadFruitsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadFruitsCopyWithImpl<$Res> extends _$FruitsEventCopyWithImpl<$Res>
    implements _$$LoadFruitsCopyWith<$Res> {
  __$$LoadFruitsCopyWithImpl(
      _$LoadFruits _value, $Res Function(_$LoadFruits) _then)
      : super(_value, (v) => _then(v as _$LoadFruits));

  @override
  _$LoadFruits get _value => super._value as _$LoadFruits;
}

/// @nodoc

class _$LoadFruits implements LoadFruits {
  const _$LoadFruits();

  @override
  String toString() {
    return 'FruitsEvent.loadFruits()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadFruits);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadFruits,
  }) {
    return loadFruits();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadFruits,
  }) {
    return loadFruits?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadFruits,
    required TResult orElse(),
  }) {
    if (loadFruits != null) {
      return loadFruits();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadFruits value) loadFruits,
  }) {
    return loadFruits(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadFruits value)? loadFruits,
  }) {
    return loadFruits?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadFruits value)? loadFruits,
    required TResult orElse(),
  }) {
    if (loadFruits != null) {
      return loadFruits(this);
    }
    return orElse();
  }
}

abstract class LoadFruits implements FruitsEvent {
  const factory LoadFruits() = _$LoadFruits;
}

/// @nodoc
mixin _$FruitsStateShared {
  FruitsLoadingState get fruitsLoadingState =>
      throw _privateConstructorUsedError;
  List<Fruit> get fruits => throw _privateConstructorUsedError;
  Map<String, String> get imageReferences => throw _privateConstructorUsedError;
  String? get mostFruitsKey => throw _privateConstructorUsedError;
  int? get mostFruitsValue => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FruitsStateSharedCopyWith<FruitsStateShared> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FruitsStateSharedCopyWith<$Res> {
  factory $FruitsStateSharedCopyWith(
          FruitsStateShared value, $Res Function(FruitsStateShared) then) =
      _$FruitsStateSharedCopyWithImpl<$Res>;
  $Res call(
      {FruitsLoadingState fruitsLoadingState,
      List<Fruit> fruits,
      Map<String, String> imageReferences,
      String? mostFruitsKey,
      int? mostFruitsValue});
}

/// @nodoc
class _$FruitsStateSharedCopyWithImpl<$Res>
    implements $FruitsStateSharedCopyWith<$Res> {
  _$FruitsStateSharedCopyWithImpl(this._value, this._then);

  final FruitsStateShared _value;
  // ignore: unused_field
  final $Res Function(FruitsStateShared) _then;

  @override
  $Res call({
    Object? fruitsLoadingState = freezed,
    Object? fruits = freezed,
    Object? imageReferences = freezed,
    Object? mostFruitsKey = freezed,
    Object? mostFruitsValue = freezed,
  }) {
    return _then(_value.copyWith(
      fruitsLoadingState: fruitsLoadingState == freezed
          ? _value.fruitsLoadingState
          : fruitsLoadingState // ignore: cast_nullable_to_non_nullable
              as FruitsLoadingState,
      fruits: fruits == freezed
          ? _value.fruits
          : fruits // ignore: cast_nullable_to_non_nullable
              as List<Fruit>,
      imageReferences: imageReferences == freezed
          ? _value.imageReferences
          : imageReferences // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      mostFruitsKey: mostFruitsKey == freezed
          ? _value.mostFruitsKey
          : mostFruitsKey // ignore: cast_nullable_to_non_nullable
              as String?,
      mostFruitsValue: mostFruitsValue == freezed
          ? _value.mostFruitsValue
          : mostFruitsValue // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$$_FruitsStateSharedCopyWith<$Res>
    implements $FruitsStateSharedCopyWith<$Res> {
  factory _$$_FruitsStateSharedCopyWith(_$_FruitsStateShared value,
          $Res Function(_$_FruitsStateShared) then) =
      __$$_FruitsStateSharedCopyWithImpl<$Res>;
  @override
  $Res call(
      {FruitsLoadingState fruitsLoadingState,
      List<Fruit> fruits,
      Map<String, String> imageReferences,
      String? mostFruitsKey,
      int? mostFruitsValue});
}

/// @nodoc
class __$$_FruitsStateSharedCopyWithImpl<$Res>
    extends _$FruitsStateSharedCopyWithImpl<$Res>
    implements _$$_FruitsStateSharedCopyWith<$Res> {
  __$$_FruitsStateSharedCopyWithImpl(
      _$_FruitsStateShared _value, $Res Function(_$_FruitsStateShared) _then)
      : super(_value, (v) => _then(v as _$_FruitsStateShared));

  @override
  _$_FruitsStateShared get _value => super._value as _$_FruitsStateShared;

  @override
  $Res call({
    Object? fruitsLoadingState = freezed,
    Object? fruits = freezed,
    Object? imageReferences = freezed,
    Object? mostFruitsKey = freezed,
    Object? mostFruitsValue = freezed,
  }) {
    return _then(_$_FruitsStateShared(
      fruitsLoadingState: fruitsLoadingState == freezed
          ? _value.fruitsLoadingState
          : fruitsLoadingState // ignore: cast_nullable_to_non_nullable
              as FruitsLoadingState,
      fruits: fruits == freezed
          ? _value._fruits
          : fruits // ignore: cast_nullable_to_non_nullable
              as List<Fruit>,
      imageReferences: imageReferences == freezed
          ? _value._imageReferences
          : imageReferences // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      mostFruitsKey: mostFruitsKey == freezed
          ? _value.mostFruitsKey
          : mostFruitsKey // ignore: cast_nullable_to_non_nullable
              as String?,
      mostFruitsValue: mostFruitsValue == freezed
          ? _value.mostFruitsValue
          : mostFruitsValue // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_FruitsStateShared implements _FruitsStateShared {
  const _$_FruitsStateShared(
      {required this.fruitsLoadingState,
      required final List<Fruit> fruits,
      required final Map<String, String> imageReferences,
      this.mostFruitsKey,
      this.mostFruitsValue})
      : _fruits = fruits,
        _imageReferences = imageReferences;

  @override
  final FruitsLoadingState fruitsLoadingState;
  final List<Fruit> _fruits;
  @override
  List<Fruit> get fruits {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_fruits);
  }

  final Map<String, String> _imageReferences;
  @override
  Map<String, String> get imageReferences {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_imageReferences);
  }

  @override
  final String? mostFruitsKey;
  @override
  final int? mostFruitsValue;

  @override
  String toString() {
    return 'FruitsStateShared(fruitsLoadingState: $fruitsLoadingState, fruits: $fruits, imageReferences: $imageReferences, mostFruitsKey: $mostFruitsKey, mostFruitsValue: $mostFruitsValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FruitsStateShared &&
            const DeepCollectionEquality()
                .equals(other.fruitsLoadingState, fruitsLoadingState) &&
            const DeepCollectionEquality().equals(other._fruits, _fruits) &&
            const DeepCollectionEquality()
                .equals(other._imageReferences, _imageReferences) &&
            const DeepCollectionEquality()
                .equals(other.mostFruitsKey, mostFruitsKey) &&
            const DeepCollectionEquality()
                .equals(other.mostFruitsValue, mostFruitsValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(fruitsLoadingState),
      const DeepCollectionEquality().hash(_fruits),
      const DeepCollectionEquality().hash(_imageReferences),
      const DeepCollectionEquality().hash(mostFruitsKey),
      const DeepCollectionEquality().hash(mostFruitsValue));

  @JsonKey(ignore: true)
  @override
  _$$_FruitsStateSharedCopyWith<_$_FruitsStateShared> get copyWith =>
      __$$_FruitsStateSharedCopyWithImpl<_$_FruitsStateShared>(
          this, _$identity);
}

abstract class _FruitsStateShared implements FruitsStateShared {
  const factory _FruitsStateShared(
      {required final FruitsLoadingState fruitsLoadingState,
      required final List<Fruit> fruits,
      required final Map<String, String> imageReferences,
      final String? mostFruitsKey,
      final int? mostFruitsValue}) = _$_FruitsStateShared;

  @override
  FruitsLoadingState get fruitsLoadingState =>
      throw _privateConstructorUsedError;
  @override
  List<Fruit> get fruits => throw _privateConstructorUsedError;
  @override
  Map<String, String> get imageReferences => throw _privateConstructorUsedError;
  @override
  String? get mostFruitsKey => throw _privateConstructorUsedError;
  @override
  int? get mostFruitsValue => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_FruitsStateSharedCopyWith<_$_FruitsStateShared> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FruitsState {
  FruitsStateShared get shared => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FruitsStateShared shared) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(FruitsStateShared shared)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FruitsStateShared shared)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FruitsStateCopyWith<FruitsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FruitsStateCopyWith<$Res> {
  factory $FruitsStateCopyWith(
          FruitsState value, $Res Function(FruitsState) then) =
      _$FruitsStateCopyWithImpl<$Res>;
  $Res call({FruitsStateShared shared});

  $FruitsStateSharedCopyWith<$Res> get shared;
}

/// @nodoc
class _$FruitsStateCopyWithImpl<$Res> implements $FruitsStateCopyWith<$Res> {
  _$FruitsStateCopyWithImpl(this._value, this._then);

  final FruitsState _value;
  // ignore: unused_field
  final $Res Function(FruitsState) _then;

  @override
  $Res call({
    Object? shared = freezed,
  }) {
    return _then(_value.copyWith(
      shared: shared == freezed
          ? _value.shared
          : shared // ignore: cast_nullable_to_non_nullable
              as FruitsStateShared,
    ));
  }

  @override
  $FruitsStateSharedCopyWith<$Res> get shared {
    return $FruitsStateSharedCopyWith<$Res>(_value.shared, (value) {
      return _then(_value.copyWith(shared: value));
    });
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> implements $FruitsStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  $Res call({FruitsStateShared shared});

  @override
  $FruitsStateSharedCopyWith<$Res> get shared;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res> extends _$FruitsStateCopyWithImpl<$Res>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, (v) => _then(v as _$_Initial));

  @override
  _$_Initial get _value => super._value as _$_Initial;

  @override
  $Res call({
    Object? shared = freezed,
  }) {
    return _then(_$_Initial(
      shared: shared == freezed
          ? _value.shared
          : shared // ignore: cast_nullable_to_non_nullable
              as FruitsStateShared,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial({required this.shared});

  @override
  final FruitsStateShared shared;

  @override
  String toString() {
    return 'FruitsState.initial(shared: $shared)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            const DeepCollectionEquality().equals(other.shared, shared));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(shared));

  @JsonKey(ignore: true)
  @override
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FruitsStateShared shared) initial,
  }) {
    return initial(shared);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(FruitsStateShared shared)? initial,
  }) {
    return initial?.call(shared);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FruitsStateShared shared)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(shared);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements FruitsState {
  const factory _Initial({required final FruitsStateShared shared}) =
      _$_Initial;

  @override
  FruitsStateShared get shared => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
