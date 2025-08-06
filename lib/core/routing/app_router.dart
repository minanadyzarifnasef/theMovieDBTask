

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:themoviedbtask/core/style/widgets/full_screen_image_viewers.dart';
import 'package:themoviedbtask/features/actors/presentation/cubits/actors_cubit.dart';
import 'package:themoviedbtask/features/actors/presentation/views/actor_details.dart';
import 'package:themoviedbtask/features/onbording/presentation/splash_screen.dart';

import '../../features/actors/data/models/actors_response_model.dart';
import '../../features/actors/presentation/views/actors_list_screen.dart';
import '../di/dependency_injection.dart';
import '../style/widgets/no_route_widget.dart';
import 'routes.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    final arguments = settings.arguments;

    switch (settings.name) {
      case Routes.splashScreen:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case Routes.actorsListScreen:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
              create: (_) => getIt<ActorsCubit>(),
              child:   const ActorsListScreen(),

            ),

        );
      case Routes.actorDetails:
        return MaterialPageRoute(builder: (_) => BlocProvider(
          create: (_) => getIt<ActorsCubit>(),
          child:   ActorDetails(actor: arguments as ActorModel,),

        ),
            );
      case Routes.fullScreenImageViewer:
        return MaterialPageRoute(builder: (_) =>  FullScreenImageViewer(imageUrl: arguments as String, ));
     

      default:
        return MaterialPageRoute(builder: (_) => const NoRouteWidget());

    }
  }


}
