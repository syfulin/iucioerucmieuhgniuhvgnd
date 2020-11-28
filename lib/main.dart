import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:hackathon/config.dart';
import 'package:hackathon/http_client.dart';
import 'package:hackathon/injections.dart';
import 'package:hackathon/head_to_head/presentation/bloc/head_to_head_bloc.dart';

final serviceLocator = GetIt.instance;

Future<void> main() async {
  const config = Config(
    baseUrl: 'https://api.sportradar.us/soccer-t3',
  );

  await init(serviceLocator, HttpClient(baseUrl: config.baseUrl));
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
      body: Column(
        children: <Widget>[
          Container(
            height: 200,
            child: BlocBuilder<HeadToHeadBloc, HeadToHeadState>(
              cubit: serviceLocator<HeadToHeadBloc>()..add(HeadToHeadEvent.fetchInitialData()),
              builder: (context, state) {
                return state.map(
                  loading: (state) => const Center(
                    child: const CircularProgressIndicator(),
                  ),
                  loaded: (state) {
                    return Container(
                      color: Colors.green,
                    );
                  }
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
