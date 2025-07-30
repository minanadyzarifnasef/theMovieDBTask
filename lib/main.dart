import 'package:flutter/material.dart';

import 'core/constants/strings.dart';
import 'core/routing/app_router.dart';
import 'core/routing/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: appName,
      debugShowCheckedModeBanner: false,
      onGenerateRoute: AppRouter().generateRoute,
      initialRoute: "asdsadd",
     // Routes.splashScreen,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),

    );
  }
}

