import 'package:dio/dio.dart';
import 'package:flutter_movie_info/data/data_source/movie_data_source.dart';
import 'package:flutter_movie_info/data/dto/movie_detail_dto.dart';
import 'package:flutter_movie_info/data/dto/movie_response_dto.dart';

class MovieDataSourceImpl implements MovieDataSource {
  final Dio dio;
  MovieDataSourceImpl(this.dio);

  @override
  Future<MovieDetailDto?> fetchMovieDetail(int id) async {
    final Response response = await dio.get('/$id?language=ko-KR');
    return MovieDetailDto.fromJson(response.data);
  }

  @override
  Future<MovieResponseDto?> fetchNowPlayingMovies() async {
    final Response response = await dio.get('/now_playing?language=ko-KR&page=1');
    return MovieResponseDto.fromJson(response.data);
  }

  @override
  Future<MovieResponseDto?> fetchPopularMovies() async {
    final Response response = await dio.get('/popular?language=ko-KR&page=1');
    return MovieResponseDto.fromJson(response.data);
  }

  @override
  Future<MovieResponseDto?> fetchTopRatedMovies() async {
    final Response response = await dio.get('/top_rated?language=ko-KR&page=1');
    return MovieResponseDto.fromJson(response.data);
  }

  @override
  Future<MovieResponseDto?> fetchUpcomingMovies() async {
    final Response response = await dio.get('/upcoming?language=ko-KR&page=1');
    return MovieResponseDto.fromJson(response.data);
  }
}
