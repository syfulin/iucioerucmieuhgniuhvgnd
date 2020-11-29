import 'dart:convert';

import 'package:flutter/widgets.dart';
import 'package:hackathon/http_client.dart';
import 'package:hackathon/live_matches/domain/live_matches_response.dart';

class LiveMatchesRepository {
  final HttpClient _client;
  final String _apiKey;

  LiveMatchesRepository({
    @required HttpClient client,
    @required String apiKey,
  }) : _client = client, _apiKey = apiKey;


  Future<List<Result>> getLiveMatches() async {
    final response = await _client.get('/other/en/schedules/live/results.json?api_key=$_apiKey');
    final mathes = LiveMatchesResponse.fromJson(json.decode(response.body));
    return mathes.results.where((result) => result.sportEventStatus.status == Status.LIVE).toList();
  }
}
