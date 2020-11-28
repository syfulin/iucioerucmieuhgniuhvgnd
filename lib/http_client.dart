import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;

@immutable
class HttpClient {
  final http.Client _client;
  final String _baseUrl;

  HttpClient({
    @required String baseUrl,
  }) : _client = http.Client(), _baseUrl = baseUrl;

  Future<http.Response> get(url, {Map<String, String> headers}) {
    return _client.get('$_baseUrl$url');
  }
}
