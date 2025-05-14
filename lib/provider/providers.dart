import 'package:dio/dio.dart';
import 'package:flutter_movie_info/data/data_source/movie_data_source.dart';
import 'package:flutter_movie_info/data/data_source/movie_data_source_impl.dart';
import 'package:flutter_movie_info/data/repository/movie_repository_impl.dart';
import 'package:flutter_movie_info/domain/repository/movie_repository.dart';
import 'package:flutter_movie_info/domain/usecase/fetch_movie_detail_usecase.dart';
import 'package:flutter_movie_info/domain/usecase/fetch_now_playing_movies_usecase.dart';
import 'package:flutter_movie_info/domain/usecase/fetch_popular_movies_usecase.dart';
import 'package:flutter_movie_info/domain/usecase/fetch_top_rated_movies_usecase.dart';
import 'package:flutter_movie_info/domain/usecase/fetch_upcoming_movies_usecase.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final _movieDataSourceProvider = Provider<MovieDataSource>((ref) {
  final dio = Dio(); // Create an instance of Dio
  return MovieDataSourceImpl(dio);
});

final _movieRepositoryProvider = Provider<MovieRepository>((ref) {
  final dataSource = ref.read(_movieDataSourceProvider);
  return MovieRepositoryImpl(dataSource);
});

final fetchMovieDetailUseCaseProvider = Provider<FetchMovieDetailUseCase>((ref) {
  final repository = ref.read(_movieRepositoryProvider);
  return FetchMovieDetailUseCase(repository);
});

final fetchNowPlayingMoviesUseCaseProvider = Provider<FetchNowPlayingMoviesUseCase>((ref) {
  final repository = ref.read(_movieRepositoryProvider);
  return FetchNowPlayingMoviesUseCase(repository);
});

final fetchPopularMoviesUseCaseProvider = Provider<FetchPopularMoviesUseCase>((ref) {
  final repository = ref.read(_movieRepositoryProvider);
  return FetchPopularMoviesUseCase(repository);
});

final fetchTopRatedMoviesUseCaseProvider = Provider<FetchTopRatedMoviesUseCase>((ref) {
  final repository = ref.read(_movieRepositoryProvider);
  return FetchTopRatedMoviesUseCase(repository);
});

final fetchUpcomingMoviesUseCaseProvider = Provider<FetchUpcomingMoviesUseCase>((ref) {
  final repository = ref.read(_movieRepositoryProvider);
  return FetchUpcomingMoviesUseCase(repository);
});
