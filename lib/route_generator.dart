import 'package:flutter/material.dart';

import 'features/features.dart';

class RouteGenerator {
  static Route<dynamic> generatorRoute(RouteSettings settings) {
    //final args = settings.arguments;

    switch (settings.name) {
      case 'login':
        return MaterialPageRoute(builder: (_) => const LoginPage());
      default:
        return _erroRoute();
    }
  }

  static Route<dynamic> _erroRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('ERRO'),
        ),
        body: const Text('ERRO'),
      );
    });
  }
}
