import 'package:flutter/widgets.dart';
import 'package:hackathon/head_to_head/domain/models.dart';
import 'package:hackathon/http_client.dart';
import 'dart:convert';

class HeadToHeadRepository {
  final HttpClient _client;

  HeadToHeadRepository({
    @required HttpClient client,
  }) : _client = client;

  Future<MatchSummary> getMatchSummary() async {
    final response = await _client.get(
        '/eu/en/matches/sr:match:23300709/summary.json?api_key=cvvqkv6p97amjsjuq5z2tqp8');
    return MatchSummary.fromJson(json.decode(response.body));
  }
}
