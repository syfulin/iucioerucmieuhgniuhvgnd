// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'live_matches_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$LiveMatchesEventTearOff {
  const _$LiveMatchesEventTearOff();

// ignore: unused_element
  LiveMatchesLiveMatches getMatches() {
    return const LiveMatchesLiveMatches();
  }
}

/// @nodoc
// ignore: unused_element
const $LiveMatchesEvent = _$LiveMatchesEventTearOff();

/// @nodoc
mixin _$LiveMatchesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult getMatches(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult getMatches(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult getMatches(LiveMatchesLiveMatches value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult getMatches(LiveMatchesLiveMatches value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $LiveMatchesEventCopyWith<$Res> {
  factory $LiveMatchesEventCopyWith(
          LiveMatchesEvent value, $Res Function(LiveMatchesEvent) then) =
      _$LiveMatchesEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$LiveMatchesEventCopyWithImpl<$Res>
    implements $LiveMatchesEventCopyWith<$Res> {
  _$LiveMatchesEventCopyWithImpl(this._value, this._then);

  final LiveMatchesEvent _value;
  // ignore: unused_field
  final $Res Function(LiveMatchesEvent) _then;
}

/// @nodoc
abstract class $LiveMatchesLiveMatchesCopyWith<$Res> {
  factory $LiveMatchesLiveMatchesCopyWith(LiveMatchesLiveMatches value,
          $Res Function(LiveMatchesLiveMatches) then) =
      _$LiveMatchesLiveMatchesCopyWithImpl<$Res>;
}

/// @nodoc
class _$LiveMatchesLiveMatchesCopyWithImpl<$Res>
    extends _$LiveMatchesEventCopyWithImpl<$Res>
    implements $LiveMatchesLiveMatchesCopyWith<$Res> {
  _$LiveMatchesLiveMatchesCopyWithImpl(LiveMatchesLiveMatches _value,
      $Res Function(LiveMatchesLiveMatches) _then)
      : super(_value, (v) => _then(v as LiveMatchesLiveMatches));

  @override
  LiveMatchesLiveMatches get _value => super._value as LiveMatchesLiveMatches;
}

/// @nodoc
class _$LiveMatchesLiveMatches implements LiveMatchesLiveMatches {
  const _$LiveMatchesLiveMatches();

  @override
  String toString() {
    return 'LiveMatchesEvent.getMatches()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LiveMatchesLiveMatches);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult getMatches(),
  }) {
    assert(getMatches != null);
    return getMatches();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult getMatches(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getMatches != null) {
      return getMatches();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult getMatches(LiveMatchesLiveMatches value),
  }) {
    assert(getMatches != null);
    return getMatches(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult getMatches(LiveMatchesLiveMatches value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getMatches != null) {
      return getMatches(this);
    }
    return orElse();
  }
}

abstract class LiveMatchesLiveMatches implements LiveMatchesEvent {
  const factory LiveMatchesLiveMatches() = _$LiveMatchesLiveMatches;
}

/// @nodoc
class _$LiveMatchesStateTearOff {
  const _$LiveMatchesStateTearOff();

// ignore: unused_element
  _LiveMatchesInitial initial() {
    return const _LiveMatchesInitial();
  }

// ignore: unused_element
  _LiveMatchesLoading loading() {
    return const _LiveMatchesLoading();
  }

// ignore: unused_element
  _LiveMatchesLoaded loaded({@required List<Result> liveMatches}) {
    return _LiveMatchesLoaded(
      liveMatches: liveMatches,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $LiveMatchesState = _$LiveMatchesStateTearOff();

/// @nodoc
mixin _$LiveMatchesState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult loaded(List<Result> liveMatches),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult loaded(List<Result> liveMatches),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_LiveMatchesInitial value),
    @required TResult loading(_LiveMatchesLoading value),
    @required TResult loaded(_LiveMatchesLoaded value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_LiveMatchesInitial value),
    TResult loading(_LiveMatchesLoading value),
    TResult loaded(_LiveMatchesLoaded value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $LiveMatchesStateCopyWith<$Res> {
  factory $LiveMatchesStateCopyWith(
          LiveMatchesState value, $Res Function(LiveMatchesState) then) =
      _$LiveMatchesStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LiveMatchesStateCopyWithImpl<$Res>
    implements $LiveMatchesStateCopyWith<$Res> {
  _$LiveMatchesStateCopyWithImpl(this._value, this._then);

  final LiveMatchesState _value;
  // ignore: unused_field
  final $Res Function(LiveMatchesState) _then;
}

/// @nodoc
abstract class _$LiveMatchesInitialCopyWith<$Res> {
  factory _$LiveMatchesInitialCopyWith(
          _LiveMatchesInitial value, $Res Function(_LiveMatchesInitial) then) =
      __$LiveMatchesInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$LiveMatchesInitialCopyWithImpl<$Res>
    extends _$LiveMatchesStateCopyWithImpl<$Res>
    implements _$LiveMatchesInitialCopyWith<$Res> {
  __$LiveMatchesInitialCopyWithImpl(
      _LiveMatchesInitial _value, $Res Function(_LiveMatchesInitial) _then)
      : super(_value, (v) => _then(v as _LiveMatchesInitial));

  @override
  _LiveMatchesInitial get _value => super._value as _LiveMatchesInitial;
}

/// @nodoc
class _$_LiveMatchesInitial implements _LiveMatchesInitial {
  const _$_LiveMatchesInitial();

  @override
  String toString() {
    return 'LiveMatchesState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LiveMatchesInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult loaded(List<Result> liveMatches),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult loaded(List<Result> liveMatches),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_LiveMatchesInitial value),
    @required TResult loading(_LiveMatchesLoading value),
    @required TResult loaded(_LiveMatchesLoaded value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_LiveMatchesInitial value),
    TResult loading(_LiveMatchesLoading value),
    TResult loaded(_LiveMatchesLoaded value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _LiveMatchesInitial implements LiveMatchesState {
  const factory _LiveMatchesInitial() = _$_LiveMatchesInitial;
}

/// @nodoc
abstract class _$LiveMatchesLoadingCopyWith<$Res> {
  factory _$LiveMatchesLoadingCopyWith(
          _LiveMatchesLoading value, $Res Function(_LiveMatchesLoading) then) =
      __$LiveMatchesLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LiveMatchesLoadingCopyWithImpl<$Res>
    extends _$LiveMatchesStateCopyWithImpl<$Res>
    implements _$LiveMatchesLoadingCopyWith<$Res> {
  __$LiveMatchesLoadingCopyWithImpl(
      _LiveMatchesLoading _value, $Res Function(_LiveMatchesLoading) _then)
      : super(_value, (v) => _then(v as _LiveMatchesLoading));

  @override
  _LiveMatchesLoading get _value => super._value as _LiveMatchesLoading;
}

/// @nodoc
class _$_LiveMatchesLoading implements _LiveMatchesLoading {
  const _$_LiveMatchesLoading();

  @override
  String toString() {
    return 'LiveMatchesState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LiveMatchesLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult loaded(List<Result> liveMatches),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult loaded(List<Result> liveMatches),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_LiveMatchesInitial value),
    @required TResult loading(_LiveMatchesLoading value),
    @required TResult loaded(_LiveMatchesLoaded value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_LiveMatchesInitial value),
    TResult loading(_LiveMatchesLoading value),
    TResult loaded(_LiveMatchesLoaded value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LiveMatchesLoading implements LiveMatchesState {
  const factory _LiveMatchesLoading() = _$_LiveMatchesLoading;
}

/// @nodoc
abstract class _$LiveMatchesLoadedCopyWith<$Res> {
  factory _$LiveMatchesLoadedCopyWith(
          _LiveMatchesLoaded value, $Res Function(_LiveMatchesLoaded) then) =
      __$LiveMatchesLoadedCopyWithImpl<$Res>;
  $Res call({List<Result> liveMatches});
}

/// @nodoc
class __$LiveMatchesLoadedCopyWithImpl<$Res>
    extends _$LiveMatchesStateCopyWithImpl<$Res>
    implements _$LiveMatchesLoadedCopyWith<$Res> {
  __$LiveMatchesLoadedCopyWithImpl(
      _LiveMatchesLoaded _value, $Res Function(_LiveMatchesLoaded) _then)
      : super(_value, (v) => _then(v as _LiveMatchesLoaded));

  @override
  _LiveMatchesLoaded get _value => super._value as _LiveMatchesLoaded;

  @override
  $Res call({
    Object liveMatches = freezed,
  }) {
    return _then(_LiveMatchesLoaded(
      liveMatches: liveMatches == freezed
          ? _value.liveMatches
          : liveMatches as List<Result>,
    ));
  }
}

/// @nodoc
class _$_LiveMatchesLoaded implements _LiveMatchesLoaded {
  const _$_LiveMatchesLoaded({@required this.liveMatches})
      : assert(liveMatches != null);

  @override
  final List<Result> liveMatches;

  @override
  String toString() {
    return 'LiveMatchesState.loaded(liveMatches: $liveMatches)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LiveMatchesLoaded &&
            (identical(other.liveMatches, liveMatches) ||
                const DeepCollectionEquality()
                    .equals(other.liveMatches, liveMatches)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(liveMatches);

  @override
  _$LiveMatchesLoadedCopyWith<_LiveMatchesLoaded> get copyWith =>
      __$LiveMatchesLoadedCopyWithImpl<_LiveMatchesLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult loaded(List<Result> liveMatches),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    return loaded(liveMatches);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult loaded(List<Result> liveMatches),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(liveMatches);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_LiveMatchesInitial value),
    @required TResult loading(_LiveMatchesLoading value),
    @required TResult loaded(_LiveMatchesLoaded value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_LiveMatchesInitial value),
    TResult loading(_LiveMatchesLoading value),
    TResult loaded(_LiveMatchesLoaded value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _LiveMatchesLoaded implements LiveMatchesState {
  const factory _LiveMatchesLoaded({@required List<Result> liveMatches}) =
      _$_LiveMatchesLoaded;

  List<Result> get liveMatches;
  _$LiveMatchesLoadedCopyWith<_LiveMatchesLoaded> get copyWith;
}
