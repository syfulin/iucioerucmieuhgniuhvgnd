import 'package:get_it/get_it.dart';
import 'package:hackathon/head_to_head/infrastructure/head_to_head_repository.dart';
import 'package:hackathon/http_client.dart';
import 'package:hackathon/head_to_head/presentation/bloc/head_to_head_bloc.dart';
import 'package:hackathon/live_matches/infrastructure/live_matches_repository.dart';
import 'package:hackathon/live_matches/presentation/bloc/live_matches_bloc.dart';

Future<void> init(GetIt serviceLocator, HttpClient client, String apiKey) async {
  serviceLocator.registerLazySingleton(
    () => HeadToHeadRepository(
      client: client,
      apiKey: apiKey,
    ),
  );

  serviceLocator.registerSingleton(
    HeadToHeadBloc(
      headToHeadRepository: serviceLocator(),
    ),
  );

  serviceLocator.registerLazySingleton(
    () => LiveMatchesRepository(
      client: client,
      apiKey: apiKey,
    ),
  );

  serviceLocator.registerSingleton(
    LiveMatchesBloc(
      liveMatchesRepository: serviceLocator(),
    ),
  );
}
