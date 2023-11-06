import 'package:flutter/material.dart';

import 'core/core.dart';
import 'route_generator.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Base-App',
      theme: ThemeData(
        useMaterial3: true,
      ),
      initialRoute: 'login',
      onGenerateRoute: RouteGenerator.generatorRoute,
      debugShowCheckedModeBanner: false,
      debugShowMaterialGrid: false,
      builder: (context, widget) {
        final mediaQuery = MediaQuery.of(context);
        final size = mediaQuery.size;

        AppConstants.instance
          ..screenHeight = size.height
          ..screenWidth = size.width;

        return widget ?? Container();
      },
    );
  }
}
