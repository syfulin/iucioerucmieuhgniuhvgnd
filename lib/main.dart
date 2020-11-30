import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:hackathon/config.dart';
import 'package:hackathon/head_to_head/presentation/head_to_head_new.dart';
import 'package:hackathon/http_client.dart';
import 'package:hackathon/injections.dart';
import 'package:hackathon/head_to_head/presentation/bloc/head_to_head_bloc.dart';
import 'package:hackathon/live_matches/presentation/live_matches.dart';

final serviceLocator = GetIt.instance;

const _config = Config(
  baseUrl: 'https://api.sportradar.us/soccer-xt3',
  apiKey: 'n7kgjnqegbrpezpspffvmhgn',
);

Future<void> main() async {
  await init(
      serviceLocator, HttpClient(baseUrl: _config.baseUrl), _config.apiKey);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainPage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MainPage extends StatefulWidget {
  MainPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      // body: LiveMatches(),
      body: HeadToHeadNew(),
      // body: Column(
      //   children: <Widget>[
      //     Container(
      //       height: 200,
      //       child: BlocBuilder<HeadToHeadBloc, HeadToHeadState>(
      //         cubit: serviceLocator<HeadToHeadBloc>()
      //           ..add(HeadToHeadEvent.fetchInitialData()),
      //         builder: (context, state) {
      //           return state.map(
      //               loading: (state) => const Center(
      //                     child: const CircularProgressIndicator(),
      //                   ),
      //               loaded: (state) {
      //                 return Container(
      //                   color: Colors.green,
      //                   // Статистика команд
      //                   child: Row(
      //                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //                     children: [
      //                       // home
      //                       Column(
      //                         children: [
      //                           // Имя команды
      //                           Text('Команда: ' +
      //                               state.matchSummary.statistics.teams
      //                                   .firstWhere(
      //                                       (e) => e.qualifier == 'home')
      //                                   .name),
      //                           // Забили голов:
      //                           Text('Забили голов: ' +
      //                               state
      //                                   .matchSummary.sportEventStatus.homeScore
      //                                   .toString()),
      //                           // Владения мячом
      //                           Text('Владение мячом: ' +
      //                               state.matchSummary.statistics.teams
      //                                   .firstWhere(
      //                                       (e) => e.qualifier == 'home')
      //                                   .statistics['ball_possession']
      //                                   .toString() +
      //                               '%'),
      //                           // Получили желтых карточек:
      //                           Text('Желтых карточек: ' +
      //                               state.matchSummary.statistics.teams
      //                                   .firstWhere(
      //                                       (e) => e.qualifier == 'home')
      //                                   .statistics['yellow_cards']
      //                                   .toString()),
      //                         ],
      //                       ),
      //                       // awai
      //                       Column(
      //                         children: [
      //                           // Имя команды
      //                           Text('Команда: ' +
      //                               state.matchSummary.statistics.teams
      //                                   .firstWhere(
      //                                       (e) => e.qualifier == 'away')
      //                                   .name),
      //                           // Забили голов:
      //                           Text('Забили голов: ' +
      //                               state
      //                                   .matchSummary.sportEventStatus.awayScore
      //                                   .toString()),
      //                           // Владения мячом
      //                           Text('Владение мячом: ' +
      //                               state.matchSummary.statistics.teams
      //                                   .firstWhere(
      //                                       (e) => e.qualifier == 'away')
      //                                   .statistics['ball_possession']
      //                                   .toString() +
      //                               '%'),
      //                           // Получили желтых карточек:
      //                           Text('Желтых карточек: ' +
      //                               state.matchSummary.statistics.teams
      //                                   .firstWhere(
      //                                       (e) => e.qualifier == 'away')
      //                                   .statistics['yellow_cards']
      //                                   .toString()),
      //                         ],
      //                       ),
      //                     ],
      //                   ),
      //                 );
      //               });
      //         },
      //       ),
      //     ),
      //   ],
      // ),
    );
  }
}
