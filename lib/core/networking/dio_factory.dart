import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioFactory {
  /// private constructor as I don't want to allow creating an instance of this class
  DioFactory._();

  static Dio? dio;

  static Future<Dio> getDio() async{
   // await AppUtilities.instance.initialize(); // Ensure data is loaded before creating Dio

    Duration timeOut = const Duration(seconds: 30);

    if (dio == null) {
      dio = Dio();
      dio!
        ..options.connectTimeout = timeOut
        ..options.receiveTimeout = timeOut
        ..options.headers = {
        "Authorization": "Bearer  eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiJjMGVmZjBjNmVhMDZhNDgwNTJlYzQyZDYyNDczZTk1ZCIsIm5iZiI6MTc1Mzg5NjQyMi4wMTQwMDAyLCJzdWIiOiI2ODhhNTVlNjdhZDQ5ZGU0MGQ2OTQ1NzciLCJzY29wZXMiOlsiYXBpX3JlYWQiXSwidmVyc2lvbiI6MX0.5SK5x3v3DX98seOlPSgqjWzn78yjxut_YbyoxxUykN4",
        //  "Content-Type": "multipart/form-data",
        };

      addDioInterceptor();
      return dio!;
    } else {
      return dio!;
    }
  }

  static void addDioInterceptor() {
    dio?.interceptors.add(
      PrettyDioLogger(
        requestBody: true,
        requestHeader: true,
        responseHeader: true,
      ),
    );
  }
}
