

import 'package:flutter/material.dart';

import '../style/widgets/no_route_widget.dart';
import 'routes.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    final arguments = settings.arguments;

    switch (settings.name) {
     

      default:
        return MaterialPageRoute(builder: (_) => const NoRouteWidget());

    }
  }


}
