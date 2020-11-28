import 'package:get_it/get_it.dart';
import 'package:hackathon/head_to_head/infrastructure/head_to_head_repository.dart';
import 'package:hackathon/http_client.dart';
import 'package:hackathon/head_to_head/presentation/bloc/head_to_head_bloc.dart';

Future<void> init(GetIt serviceLocator, HttpClient client) async {
  serviceLocator.registerLazySingleton(
    () => HeadToHeadRepository(
      client: client,
    ),
  );

  serviceLocator.registerSingleton(
    HeadToHeadBloc(
      headToHeadRepository: serviceLocator(),
    ),
  );
}
