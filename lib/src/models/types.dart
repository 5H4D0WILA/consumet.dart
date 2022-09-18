import 'package:flutter/foundation.dart';

class IProviderStats {
  final String name;
  final String baseUrl;
  final List<String> lang;
  final bool isNSFW;
  final String logo;
  final String classPath;
  final bool isWorking;

  IProviderStats({
    required this.baseUrl,
    required this.lang,
    required this.isNSFW,
    required this.logo,
    required this.classPath,
    required this.isWorking,
    required this.name,
  });
}
