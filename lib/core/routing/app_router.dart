

import 'package:flutter/material.dart';
import 'package:themoviedbtask/core/style/widgets/full_screen_image_viewers.dart';
import 'package:themoviedbtask/features/actors/presentation/views/actor_details.dart';
import 'package:themoviedbtask/features/onbording/presentation/splash_screen.dart';

import '../../features/actors/presentation/views/actors_list_screen.dart';
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
      case Routes.fullScreenImageViewer:
        return MaterialPageRoute(builder: (_) =>  FullScreenImageViewer(imageUrl: arguments as String, ));
     

      default:
        return MaterialPageRoute(builder: (_) => const NoRouteWidget());

    }
  }


}
