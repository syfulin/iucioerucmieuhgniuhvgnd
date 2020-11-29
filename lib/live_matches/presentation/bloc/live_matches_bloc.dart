import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:hackathon/live_matches/domain/live_matches_response.dart';
import 'package:hackathon/live_matches/infrastructure/live_matches_repository.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart'; 

part 'live_matches_bloc.freezed.dart';

@freezed
abstract class LiveMatchesEvent with _$LiveMatchesEvent {
  const factory LiveMatchesEvent.getMatches() = LiveMatchesLiveMatches;
}

@freezed
abstract class LiveMatchesState with _$LiveMatchesState {
  const factory LiveMatchesState.initial() = _LiveMatchesInitial;
  const factory LiveMatchesState.loading() = _LiveMatchesLoading;
  const factory LiveMatchesState.loaded({
    @required List<Result> liveMatches,
  }) = _LiveMatchesLoaded;
}

class LiveMatchesBloc extends Bloc<LiveMatchesEvent, LiveMatchesState> {
  final LiveMatchesRepository _liveMatchesRepository;

  LiveMatchesBloc({
    @required LiveMatchesRepository liveMatchesRepository,
  }) : _liveMatchesRepository = liveMatchesRepository, super(LiveMatchesState.initial());

  @override
  Stream<LiveMatchesState> mapEventToState(
    LiveMatchesEvent event,
  ) => event.when(
    getMatches: () async* {
      yield LiveMatchesState.loading();
      final matches = await _liveMatchesRepository.getLiveMatches();
      yield LiveMatchesState.loaded(liveMatches: matches);
    },
  );
}
