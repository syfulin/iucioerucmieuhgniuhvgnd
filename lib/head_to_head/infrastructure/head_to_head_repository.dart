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
    final response = await _client.get('/intl/en/matches/sr:match:13307977/summary.json?api_key=b87pdv3kzejgujc98339p9xk');
    return MatchSummary.fromJson(json.decode(response.body));
  }
}
