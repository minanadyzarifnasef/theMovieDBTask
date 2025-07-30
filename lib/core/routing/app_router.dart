

import 'package:flutter/material.dart';
import 'package:themoviedbtask/features/onbording/presentation/splash_screen.dart';

import '../style/widgets/no_route_widget.dart';
import 'routes.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    final arguments = settings.arguments;

    switch (settings.name) {
      case Routes.splashScreen:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
     

      default:
        return MaterialPageRoute(builder: (_) => const NoRouteWidget());

    }
  }


}
