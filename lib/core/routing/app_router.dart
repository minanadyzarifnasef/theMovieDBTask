

import 'package:flutter/material.dart';
import 'package:themoviedbtask/features/actors/presentation/actor_details.dart';
import 'package:themoviedbtask/features/onbording/presentation/splash_screen.dart';

import '../../features/actors/presentation/actors_list_screen.dart';
import '../style/widgets/no_route_widget.dart';
import 'routes.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    final arguments = settings.arguments;

    switch (settings.name) {
      case Routes.splashScreen:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case Routes.actorsListScreen:
        return MaterialPageRoute(builder: (_) => const ActorsListScreen());
      case Routes.actorDetails:
        return MaterialPageRoute(builder: (_) =>  ActorDetails(actor: arguments ));
     

      default:
        return MaterialPageRoute(builder: (_) => const NoRouteWidget());

    }
  }


}
