

import 'package:get_it/get_it.dart';
import 'package:dio/dio.dart';
import 'package:themoviedbtask/features/actors/data/repository/actors_rep_impl.dart';
import 'package:themoviedbtask/features/actors/domain/repository/actors_repository.dart';
import 'package:themoviedbtask/features/actors/presentation/cubits/actors_cubit.dart';
import '../networking/api_services.dart';
import '../networking/dio_factory.dart';
import '../services/network_checker_service.dart';

final getIt = GetIt.instance;


// i will used this to initialize  and register all requirement  before app go
Future<void> setupGetIt() async {
  // Initialize services first
  await NetworkConnectivityService.instance.initialize();


  //Register services
  Dio dio =await DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));


  getIt.registerLazySingleton<ActorsRepository>(() => ActorsRepoImpl(getIt()));
  getIt.registerFactory<ActorsCubit>(() => ActorsCubit(getIt()));






}
