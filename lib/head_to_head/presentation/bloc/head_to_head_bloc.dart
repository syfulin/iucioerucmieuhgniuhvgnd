import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:hackathon/head_to_head/domain/models.dart';
import 'package:hackathon/head_to_head/infrastructure/head_to_head_repository.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart'; 

part 'head_to_head_bloc.freezed.dart';

@freezed
abstract class HeadToHeadEvent with _$HeadToHeadEvent {
  const factory HeadToHeadEvent.fetchInitialData() = HeadToHeadInitialData;
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
  }) : this._headToHeadRepository = headToHeadRepository, super(HeadToHeadState.loading());

  @override
  Stream<HeadToHeadState> mapEventToState(
    HeadToHeadEvent event,
  ) => event.when(
    fetchInitialData: () async* {
      yield HeadToHeadState.loading();
      final matchSummary = await _headToHeadRepository.getMatchSummary();
      yield HeadToHeadState.loaded(matchSummary: matchSummary);
    },
  );
}
