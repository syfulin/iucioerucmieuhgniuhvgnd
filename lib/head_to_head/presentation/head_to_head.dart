import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hackathon/head_to_head/presentation/bloc/head_to_head_bloc.dart';
import 'package:hackathon/main.dart';

class HeadToHead extends StatelessWidget {
  final String _matchId;

  const HeadToHead({
    @required String matchId,
  }) : _matchId = matchId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Head to head'),
      ),
      body: Column(
        children: <Widget>[
          Container(
            height: 200,
            child: BlocBuilder<HeadToHeadBloc, HeadToHeadState>(
              cubit: serviceLocator<HeadToHeadBloc>()
                ..add(HeadToHeadEvent.fetchMatchData(matchId: _matchId)),
              builder: (context, state) {
                return state.map(
                    loading: (state) => const Center(
                          child: const CircularProgressIndicator(),
                        ),
                    loaded: (state) {
                      return Container(
                        color: Colors.green,
                        // Статистика команд
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // home
                            Column(
                              children: [
                                // Имя команды
                                Text('Команда: ' +
                                    state.matchSummary.statistics.teams
                                        .firstWhere(
                                            (e) => e.qualifier == 'home')
                                        .name),
                                // Забили голов:
                                Text('Забили голов: ' +
                                    state
                                        .matchSummary.sportEventStatus.homeScore
                                        .toString()),
                                // Владения мячом
                                Text('Владение мячом: ' +
                                    state.matchSummary.statistics.teams
                                        .firstWhere(
                                            (e) => e.qualifier == 'home')
                                        .statistics['ball_possession']
                                        .toString() +
                                    '%'),
                                // Получили желтых карточек:
                                Text('Желтых карточек: ' +
                                    state.matchSummary.statistics.teams
                                        .firstWhere(
                                            (e) => e.qualifier == 'home')
                                        .statistics['yellow_cards']
                                        .toString()),
                              ],
                            ),
                            // awai
                            Column(
                              children: [
                                // Имя команды
                                Text('Команда: ' +
                                    state.matchSummary.statistics.teams
                                        .firstWhere(
                                            (e) => e.qualifier == 'away')
                                        .name),
                                // Забили голов:
                                Text('Забили голов: ' +
                                    state
                                        .matchSummary.sportEventStatus.awayScore
                                        .toString()),
                                // Владения мячом
                                // Text('Владение мячом: ' +
                                //     state.matchSummary.statistics.teams
                                //         .firstWhere(
                                //             (e) => e.qualifier == 'away')
                                //         .statistics['ball_possession']
                                //         .toString() +
                                //     '%'),
                                // Получили желтых карточек:
                                // Text('Желтых карточек: ' +
                                //     state.matchSummary.statistics.teams
                                //         .firstWhere(
                                //             (e) => e.qualifier == 'away')
                                //         ?.statistics['yellow_cards']
                                //         ?.toString() ?? '0'),
                                // Text('Желтых карточек: ' +
                                //     state.matchSummary.statistics.teams
                                //         .firstWhere(
                                //             (e) => e.qualifier == 'away')
                                //         ),
                                Builder(
                                  builder: (context) {
                                    final teamInfo = state.matchSummary.statistics.teams.firstWhere((e) => e.qualifier == 'away');
                                    return Text('Желтых карточек: ' + (teamInfo.statistics == null ? '0' : teamInfo.statistics['yellow_cards'].toString()));
                                  },
                                ),
                              ],
                            ),
                          ],
                        ),
                      );
                    });
              },
            ),
          ),
        ],
      ),
    );
  }
}