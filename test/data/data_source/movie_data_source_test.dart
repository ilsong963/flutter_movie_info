import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/services.dart';
import 'package:flutter_movie_info/data/data_source/movie_data_source_impl.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockDio extends Mock implements Dio {}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  late MovieDataSourceImpl movieDataSourceImpl;
  late MockDio dio;
  setUp(() {
    dio = MockDio();
    movieDataSourceImpl = MovieDataSourceImpl(dio);
  });
  tearDown(() {
    reset(dio);
  });

  test('MovieDataSourceImpl: fetchNowPlayingMovies', () async {
    final jsonString = await rootBundle.loadString('test/data/data_source/data_json/fetchNowPlayingMovies_test_data.json');
    final jsonMap = json.decode(jsonString);
    when(() => dio.get(any())).thenAnswer((_) async => Response(data: jsonMap, requestOptions: RequestOptions(path: '')));

    final result = await movieDataSourceImpl.fetchNowPlayingMovies();
    expect(result!.results.length, 20);
  });

  test('MovieDataSourceImpl: fetchPopularMovies', () async {
    final jsonString = await rootBundle.loadString('test/data/data_source/data_json/fetchPopularMovies_test_data.json');
    final jsonMap = json.decode(jsonString);

    when(() => dio.get(any())).thenAnswer((_) async => Response(data: jsonMap, requestOptions: RequestOptions(path: '')));

    final result = await movieDataSourceImpl.fetchPopularMovies();
    expect(result!.results.first.id, 1241436);
  });

  test('MovieDataSourceImpl: fetchTopRatedMovies', () async {
    final jsonString = await rootBundle.loadString('test/data/data_source/data_json/fetchTopRatedMovies_test_data.json');
    final jsonMap = json.decode(jsonString);
    when(() => dio.get(any())).thenAnswer((_) async => Response(data: jsonMap, requestOptions: RequestOptions(path: '')));

    final result = await movieDataSourceImpl.fetchTopRatedMovies();
    expect(result!.results.first.id, 278);
  });
  test('MovieDataSourceImpl: fetchUpcomingMovies', () async {
    final jsonString = await rootBundle.loadString('test/data/data_source/data_json/fetchUpcomingMovies_test_data.json');
    final jsonMap = json.decode(jsonString);
    when(() => dio.get(any())).thenAnswer((_) async => Response(data: jsonMap, requestOptions: RequestOptions(path: '')));

    final result = await movieDataSourceImpl.fetchUpcomingMovies();
    expect(result!.results.first.id, 977294);
  });
  test('MovieDataSourceImpl: fetchMovieDetail', () async {
    final jsonString = await rootBundle.loadString('test/data/data_source/data_json/fetchMovieDetail_test_data.json');
    final jsonMap = json.decode(jsonString);
    when(() => dio.get(any())).thenAnswer((_) async => Response(data: jsonMap, requestOptions: RequestOptions(path: '')));

    final result = await movieDataSourceImpl.fetchMovieDetail(1233069);

    expect(result!.id, 123);
    expect(result.originalTitle, "The Lord of the Rings");
  });
}
