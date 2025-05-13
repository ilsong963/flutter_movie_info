import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter_movie_info/data/data_source/movie_data_source.dart';
import 'package:flutter_movie_info/data/dto/movie_detail_dto.dart';
import 'package:flutter_movie_info/data/dto/movie_response_dto.dart';
import 'package:flutter_movie_info/data/repository/movie_repository_impl.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockMovieDataSource extends Mock implements MovieDataSource {}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  late MockMovieDataSource mockMovieDataSource;
  late MovieRepositoryImpl movieRepositoryImpl;
  setUp(() async {
    mockMovieDataSource = MockMovieDataSource();
    movieRepositoryImpl = MovieRepositoryImpl(mockMovieDataSource);
  });

  test('MovieRepositoryImpl test : fetchMovieDetail', () async {
    final jsonString = await rootBundle.loadString('test/test_data/movie_detail_test_data.json');
    final jsonMap = json.decode(jsonString);

    final movie = MovieDetailDto.fromJson(jsonMap);
    when(() => mockMovieDataSource.fetchMovieDetail(1233069)).thenAnswer((_) async => movie);

    final result = await movieRepositoryImpl.fetchMovieDetail(1233069);
    expect(result!.id, 123);
  });

  test('MovieRepositoryImpl test : fetchNowPlayingMovies', () async {
    final jsonString = await rootBundle.loadString('test/test_data/movie_response_dates_test_data.json');
    final jsonMap = json.decode(jsonString);

    final movie = MovieResponseDto.fromJson(jsonMap);
    when(() => mockMovieDataSource.fetchNowPlayingMovies()).thenAnswer((_) async => movie);

    final result = await movieRepositoryImpl.fetchNowPlayingMovies();
    expect(result!.length, 20);
    expect(result[0].id, 977294);
  });

  test('MovieRepositoryImpl test : fetchPopularMovies', () async {
    final jsonString = await rootBundle.loadString('test/test_data/movie_response_test_data.json');
    final jsonMap = json.decode(jsonString);

    final movie = MovieResponseDto.fromJson(jsonMap);
    when(() => mockMovieDataSource.fetchPopularMovies()).thenAnswer((_) async => movie);

    final result = await movieRepositoryImpl.fetchPopularMovies();
    expect(result!.length, 20);
    expect(result[0].id, 278);
  });
  test('MovieRepositoryImpl test : fetchTopRatedMovies', () async {
    final jsonString = await rootBundle.loadString('test/test_data/movie_response_test_data.json');
    final jsonMap = json.decode(jsonString);

    final movie = MovieResponseDto.fromJson(jsonMap);
    when(() => mockMovieDataSource.fetchTopRatedMovies()).thenAnswer((_) async => movie);

    final result = await movieRepositoryImpl.fetchTopRatedMovies();
    expect(result!.length, 20);
    expect(result[0].id, 278);
  });

  test('MovieRepositoryImpl test : fetchUpcomingMovies', () async {
    final jsonString = await rootBundle.loadString('test/test_data/movie_response_dates_test_data.json');
    final jsonMap = json.decode(jsonString);

    final movie = MovieResponseDto.fromJson(jsonMap);
    when(() => mockMovieDataSource.fetchUpcomingMovies()).thenAnswer((_) async => movie);

    final result = await movieRepositoryImpl.fetchUpcomingMovies();
    expect(result!.length, 20);
    expect(result[0].id, 977294);
  });
}
