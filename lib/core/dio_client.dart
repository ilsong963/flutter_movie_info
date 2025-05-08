import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class DioClient {
  static Dio createDio() {
    final dio = Dio(
      BaseOptions(baseUrl: 'https://api.themoviedb.org/3/movie', headers: {'Authorization': 'Bearer ${dotenv.get("THE_MOVIE_DB_API_KEY")}'}),
    );

    return dio;
  }
}
