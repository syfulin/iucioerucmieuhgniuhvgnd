import 'package:flutter/widgets.dart';

@immutable
class Config {
  final String baseUrl;

  const Config({
    @required this.baseUrl,
  });
}
