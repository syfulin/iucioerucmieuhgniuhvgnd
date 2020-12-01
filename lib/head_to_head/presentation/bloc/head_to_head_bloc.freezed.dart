// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'head_to_head_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$HeadToHeadEventTearOff {
  const _$HeadToHeadEventTearOff();

// ignore: unused_element
  HeadToHeadInitialData fetchMatchData({@required String matchId}) {
    return HeadToHeadInitialData(
      matchId: matchId,
    );
  }

// ignore: unused_element
  _HeadToHeadUpdateData updateData() {
    return const _HeadToHeadUpdateData();
  }
}

/// @nodoc
// ignore: unused_element
const $HeadToHeadEvent = _$HeadToHeadEventTearOff();

/// @nodoc
mixin _$HeadToHeadEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult fetchMatchData(String matchId),
    @required TResult updateData(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult fetchMatchData(String matchId),
    TResult updateData(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult fetchMatchData(HeadToHeadInitialData value),
    @required TResult updateData(_HeadToHeadUpdateData value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult fetchMatchData(HeadToHeadInitialData value),
    TResult updateData(_HeadToHeadUpdateData value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $HeadToHeadEventCopyWith<$Res> {
  factory $HeadToHeadEventCopyWith(
          HeadToHeadEvent value, $Res Function(HeadToHeadEvent) then) =
      _$HeadToHeadEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$HeadToHeadEventCopyWithImpl<$Res>
    implements $HeadToHeadEventCopyWith<$Res> {
  _$HeadToHeadEventCopyWithImpl(this._value, this._then);

  final HeadToHeadEvent _value;
  // ignore: unused_field
  final $Res Function(HeadToHeadEvent) _then;
}

/// @nodoc
abstract class $HeadToHeadInitialDataCopyWith<$Res> {
  factory $HeadToHeadInitialDataCopyWith(HeadToHeadInitialData value,
          $Res Function(HeadToHeadInitialData) then) =
      _$HeadToHeadInitialDataCopyWithImpl<$Res>;
  $Res call({String matchId});
}

/// @nodoc
class _$HeadToHeadInitialDataCopyWithImpl<$Res>
    extends _$HeadToHeadEventCopyWithImpl<$Res>
    implements $HeadToHeadInitialDataCopyWith<$Res> {
  _$HeadToHeadInitialDataCopyWithImpl(
      HeadToHeadInitialData _value, $Res Function(HeadToHeadInitialData) _then)
      : super(_value, (v) => _then(v as HeadToHeadInitialData));

  @override
  HeadToHeadInitialData get _value => super._value as HeadToHeadInitialData;

  @override
  $Res call({
    Object matchId = freezed,
  }) {
    return _then(HeadToHeadInitialData(
      matchId: matchId == freezed ? _value.matchId : matchId as String,
    ));
  }
}

/// @nodoc
class _$HeadToHeadInitialData implements HeadToHeadInitialData {
  const _$HeadToHeadInitialData({@required this.matchId})
      : assert(matchId != null);

  @override
  final String matchId;

  @override
  String toString() {
    return 'HeadToHeadEvent.fetchMatchData(matchId: $matchId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is HeadToHeadInitialData &&
            (identical(other.matchId, matchId) ||
                const DeepCollectionEquality().equals(other.matchId, matchId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(matchId);

  @override
  $HeadToHeadInitialDataCopyWith<HeadToHeadInitialData> get copyWith =>
      _$HeadToHeadInitialDataCopyWithImpl<HeadToHeadInitialData>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult fetchMatchData(String matchId),
    @required TResult updateData(),
  }) {
    assert(fetchMatchData != null);
    assert(updateData != null);
    return fetchMatchData(matchId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult fetchMatchData(String matchId),
    TResult updateData(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (fetchMatchData != null) {
      return fetchMatchData(matchId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult fetchMatchData(HeadToHeadInitialData value),
    @required TResult updateData(_HeadToHeadUpdateData value),
  }) {
    assert(fetchMatchData != null);
    assert(updateData != null);
    return fetchMatchData(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult fetchMatchData(HeadToHeadInitialData value),
    TResult updateData(_HeadToHeadUpdateData value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (fetchMatchData != null) {
      return fetchMatchData(this);
    }
    return orElse();
  }
}

abstract class HeadToHeadInitialData implements HeadToHeadEvent {
  const factory HeadToHeadInitialData({@required String matchId}) =
      _$HeadToHeadInitialData;

  String get matchId;
  $HeadToHeadInitialDataCopyWith<HeadToHeadInitialData> get copyWith;
}

/// @nodoc
abstract class _$HeadToHeadUpdateDataCopyWith<$Res> {
  factory _$HeadToHeadUpdateDataCopyWith(_HeadToHeadUpdateData value,
          $Res Function(_HeadToHeadUpdateData) then) =
      __$HeadToHeadUpdateDataCopyWithImpl<$Res>;
}

/// @nodoc
class __$HeadToHeadUpdateDataCopyWithImpl<$Res>
    extends _$HeadToHeadEventCopyWithImpl<$Res>
    implements _$HeadToHeadUpdateDataCopyWith<$Res> {
  __$HeadToHeadUpdateDataCopyWithImpl(
      _HeadToHeadUpdateData _value, $Res Function(_HeadToHeadUpdateData) _then)
      : super(_value, (v) => _then(v as _HeadToHeadUpdateData));

  @override
  _HeadToHeadUpdateData get _value => super._value as _HeadToHeadUpdateData;
}

/// @nodoc
class _$_HeadToHeadUpdateData implements _HeadToHeadUpdateData {
  const _$_HeadToHeadUpdateData();

  @override
  String toString() {
    return 'HeadToHeadEvent.updateData()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _HeadToHeadUpdateData);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult fetchMatchData(String matchId),
    @required TResult updateData(),
  }) {
    assert(fetchMatchData != null);
    assert(updateData != null);
    return updateData();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult fetchMatchData(String matchId),
    TResult updateData(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (updateData != null) {
      return updateData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult fetchMatchData(HeadToHeadInitialData value),
    @required TResult updateData(_HeadToHeadUpdateData value),
  }) {
    assert(fetchMatchData != null);
    assert(updateData != null);
    return updateData(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult fetchMatchData(HeadToHeadInitialData value),
    TResult updateData(_HeadToHeadUpdateData value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (updateData != null) {
      return updateData(this);
    }
    return orElse();
  }
}

abstract class _HeadToHeadUpdateData implements HeadToHeadEvent {
  const factory _HeadToHeadUpdateData() = _$_HeadToHeadUpdateData;
}

/// @nodoc
class _$HeadToHeadStateTearOff {
  const _$HeadToHeadStateTearOff();

// ignore: unused_element
  _HeadToHeadLoading loading() {
    return const _HeadToHeadLoading();
  }

// ignore: unused_element
  _HeadToHeadLoaded loaded({@required MatchSummary matchSummary}) {
    return _HeadToHeadLoaded(
      matchSummary: matchSummary,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $HeadToHeadState = _$HeadToHeadStateTearOff();

/// @nodoc
mixin _$HeadToHeadState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loading(),
    @required TResult loaded(MatchSummary matchSummary),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loading(),
    TResult loaded(MatchSummary matchSummary),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loading(_HeadToHeadLoading value),
    @required TResult loaded(_HeadToHeadLoaded value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loading(_HeadToHeadLoading value),
    TResult loaded(_HeadToHeadLoaded value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $HeadToHeadStateCopyWith<$Res> {
  factory $HeadToHeadStateCopyWith(
          HeadToHeadState value, $Res Function(HeadToHeadState) then) =
      _$HeadToHeadStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$HeadToHeadStateCopyWithImpl<$Res>
    implements $HeadToHeadStateCopyWith<$Res> {
  _$HeadToHeadStateCopyWithImpl(this._value, this._then);

  final HeadToHeadState _value;
  // ignore: unused_field
  final $Res Function(HeadToHeadState) _then;
}

/// @nodoc
abstract class _$HeadToHeadLoadingCopyWith<$Res> {
  factory _$HeadToHeadLoadingCopyWith(
          _HeadToHeadLoading value, $Res Function(_HeadToHeadLoading) then) =
      __$HeadToHeadLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$HeadToHeadLoadingCopyWithImpl<$Res>
    extends _$HeadToHeadStateCopyWithImpl<$Res>
    implements _$HeadToHeadLoadingCopyWith<$Res> {
  __$HeadToHeadLoadingCopyWithImpl(
      _HeadToHeadLoading _value, $Res Function(_HeadToHeadLoading) _then)
      : super(_value, (v) => _then(v as _HeadToHeadLoading));

  @override
  _HeadToHeadLoading get _value => super._value as _HeadToHeadLoading;
}

/// @nodoc
class _$_HeadToHeadLoading implements _HeadToHeadLoading {
  const _$_HeadToHeadLoading();

  @override
  String toString() {
    return 'HeadToHeadState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _HeadToHeadLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loading(),
    @required TResult loaded(MatchSummary matchSummary),
  }) {
    assert(loading != null);
    assert(loaded != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loading(),
    TResult loaded(MatchSummary matchSummary),
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
    @required TResult loading(_HeadToHeadLoading value),
    @required TResult loaded(_HeadToHeadLoaded value),
  }) {
    assert(loading != null);
    assert(loaded != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loading(_HeadToHeadLoading value),
    TResult loaded(_HeadToHeadLoaded value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _HeadToHeadLoading implements HeadToHeadState {
  const factory _HeadToHeadLoading() = _$_HeadToHeadLoading;
}

/// @nodoc
abstract class _$HeadToHeadLoadedCopyWith<$Res> {
  factory _$HeadToHeadLoadedCopyWith(
          _HeadToHeadLoaded value, $Res Function(_HeadToHeadLoaded) then) =
      __$HeadToHeadLoadedCopyWithImpl<$Res>;
  $Res call({MatchSummary matchSummary});
}

/// @nodoc
class __$HeadToHeadLoadedCopyWithImpl<$Res>
    extends _$HeadToHeadStateCopyWithImpl<$Res>
    implements _$HeadToHeadLoadedCopyWith<$Res> {
  __$HeadToHeadLoadedCopyWithImpl(
      _HeadToHeadLoaded _value, $Res Function(_HeadToHeadLoaded) _then)
      : super(_value, (v) => _then(v as _HeadToHeadLoaded));

  @override
  _HeadToHeadLoaded get _value => super._value as _HeadToHeadLoaded;

  @override
  $Res call({
    Object matchSummary = freezed,
  }) {
    return _then(_HeadToHeadLoaded(
      matchSummary: matchSummary == freezed
          ? _value.matchSummary
          : matchSummary as MatchSummary,
    ));
  }
}

/// @nodoc
class _$_HeadToHeadLoaded implements _HeadToHeadLoaded {
  const _$_HeadToHeadLoaded({@required this.matchSummary})
      : assert(matchSummary != null);

  @override
  final MatchSummary matchSummary;

  @override
  String toString() {
    return 'HeadToHeadState.loaded(matchSummary: $matchSummary)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HeadToHeadLoaded &&
            (identical(other.matchSummary, matchSummary) ||
                const DeepCollectionEquality()
                    .equals(other.matchSummary, matchSummary)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(matchSummary);

  @override
  _$HeadToHeadLoadedCopyWith<_HeadToHeadLoaded> get copyWith =>
      __$HeadToHeadLoadedCopyWithImpl<_HeadToHeadLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loading(),
    @required TResult loaded(MatchSummary matchSummary),
  }) {
    assert(loading != null);
    assert(loaded != null);
    return loaded(matchSummary);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loading(),
    TResult loaded(MatchSummary matchSummary),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(matchSummary);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loading(_HeadToHeadLoading value),
    @required TResult loaded(_HeadToHeadLoaded value),
  }) {
    assert(loading != null);
    assert(loaded != null);
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loading(_HeadToHeadLoading value),
    TResult loaded(_HeadToHeadLoaded value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _HeadToHeadLoaded implements HeadToHeadState {
  const factory _HeadToHeadLoaded({@required MatchSummary matchSummary}) =
      _$_HeadToHeadLoaded;

  MatchSummary get matchSummary;
  _$HeadToHeadLoadedCopyWith<_HeadToHeadLoaded> get copyWith;
}
