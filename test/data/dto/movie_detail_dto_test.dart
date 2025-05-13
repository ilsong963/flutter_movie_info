import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter_movie_info/data/dto/movie_detail_dto.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  test('MovieDetailDto : fromJson test', () async {
    final jsonString = await rootBundle.loadString('test/test_data/movie_detail_test_data.json');
    final jsonMap = json.decode(jsonString);

    final movie = MovieDetailDto.fromJson(jsonMap);

    expect(movie.id, 123);
    expect(movie.title, 'The Lord of the Rings');
    expect(movie.genres, ['Adventure', 'Animation', 'Fantasy']);
    expect(movie.tagline, 'Fantasy...beyond your imagination');
    expect(movie.voteAverage, closeTo(6.607, 0.001));
    expect(movie.runtime, 132);
    expect(movie.productionCompanies.length, 4);
  });
}
