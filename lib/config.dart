import 'package:flutter/widgets.dart';

@immutable
class Config {
  final String baseUrl;
  final String apiKey;

  const Config({
    @required this.baseUrl,
    @required this.apiKey,
  });
}
