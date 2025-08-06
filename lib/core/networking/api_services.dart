
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:themoviedbtask/features/actors/data/models/actors_response_model.dart';
import 'api_constants.dart';

part 'api_services.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl, ParseErrorLogger? errorLogger}) = _ApiService;

  @GET(ApiConstants.getActors)
  Future<ActorResponseModel> getActors(@Query("page") int page);

}