import 'package:flutter/widgets.dart';
import 'package:hackathon/head_to_head/domain/models.dart';
import 'package:hackathon/http_client.dart';
import 'dart:convert';

class HeadToHeadRepository {
  final HttpClient _client;
  final String _apiKey;

  HeadToHeadRepository({
    @required HttpClient client,
    @required String apiKey,
  }) : _client = client, _apiKey = apiKey;

  Future<MatchSummary> getMatchSummary(String matchId) async {
    final response = await _client.get(
        '/other/en/matches/$matchId/summary.json?api_key=$_apiKey');
    print(response.body);
    return MatchSummary.fromJson(json.decode(response.body));
  }
}
