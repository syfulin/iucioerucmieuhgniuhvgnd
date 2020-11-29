import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hackathon/head_to_head/presentation/head_to_head.dart';
import 'package:hackathon/live_matches/presentation/bloc/live_matches_bloc.dart';
import 'package:hackathon/main.dart';

class LiveMatches extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LiveMatchesBloc, LiveMatchesState>(
      cubit: serviceLocator<LiveMatchesBloc>()
        ..add(LiveMatchesEvent.getMatches()),
      builder: (context, state) {
        return state.map(
          initial: (state) => const SizedBox.shrink(),
          loading: (state) => const Center(
            child: const CircularProgressIndicator(),
          ),
          loaded: (state) {
            final liveMatches = state.liveMatches;
            return ListView.builder(
              itemCount: liveMatches.length,
              itemBuilder: (context, index) {
                final sportEvent = liveMatches[index].sportEvent;
                return ListTile(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HeadToHead(
                        matchId: sportEvent.id,
                      )),
                    );
                  },
                  title: Text('${sportEvent.competitors.first.name} vs ${sportEvent.competitors.last.name}'),
                );
              },
            );
          },
        );
      },
    );
  }
}
