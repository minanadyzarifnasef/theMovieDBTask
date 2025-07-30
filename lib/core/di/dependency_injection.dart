

import 'package:get_it/get_it.dart';

import '../services/network_checker_service.dart';

final getIt = GetIt.instance;


// i will used this to initialize  and register all requirement  before app go
Future<void> setupGetIt() async {
  // Initialize services first
  await NetworkConnectivityService.instance.initialize();

}
