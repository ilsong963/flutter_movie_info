import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_movie_info/constant/constant.dart';

class DioClient {
  static Dio createDio() {
    final dio = Dio(BaseOptions(baseUrl: movieDbUrl, headers: {'Authorization': 'Bearer ${dotenv.get("THE_MOVIE_DB_API_KEY")}'}));

    return dio;
  }
}
