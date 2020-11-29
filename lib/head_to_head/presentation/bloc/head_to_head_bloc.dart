import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:hackathon/head_to_head/domain/models.dart';
import 'package:hackathon/head_to_head/infrastructure/head_to_head_repository.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart'; 

part 'head_to_head_bloc.freezed.dart';

@freezed
abstract class HeadToHeadEvent with _$HeadToHeadEvent {
  const factory HeadToHeadEvent.fetchMatchData({
    @required String matchId,
  }) = HeadToHeadInitialData;
}

@freezed
abstract class HeadToHeadState with _$HeadToHeadState {
  const factory HeadToHeadState.loading() = _HeadToHeadLoading;
  const factory HeadToHeadState.loaded({
    @required MatchSummary matchSummary,
  }) = _HeadToHeadLoaded;
}

class HeadToHeadBloc extends Bloc<HeadToHeadEvent, HeadToHeadState> {
  final HeadToHeadRepository _headToHeadRepository;
  
  HeadToHeadBloc({
    @required HeadToHeadRepository headToHeadRepository,
  }) : _headToHeadRepository = headToHeadRepository, super(HeadToHeadState.loading());

  @override
  Stream<HeadToHeadState> mapEventToState(
    HeadToHeadEvent event,
  ) => event.when(
    fetchMatchData: (matchId) async* {
      yield HeadToHeadState.loading();
      final matchSummary = await _headToHeadRepository.getMatchSummary(matchId);
      yield HeadToHeadState.loaded(matchSummary: matchSummary);
    },
  );
}
