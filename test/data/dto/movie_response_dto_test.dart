import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter_movie_info/data/dto/movie_response_dto.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  test('MovieDto : fromJson test', () async {
    final jsonString = await rootBundle.loadString('test/test_data/movie_response_dates_test_data.json');

    final dto = movieResponseDtoFromJson(jsonString);

    expect(dto.page, 1);
    expect(dto.totalPages, 56);
    expect(dto.totalResults, 1106);
    expect(dto.dates?.maximum, DateTime(2025, 6, 4));
    expect(dto.dates?.minimum, DateTime(2025, 5, 14));

    final movie = dto.results.first;
    expect(movie.id, 977294);
    expect(movie.title, "Tin Soldier");
    expect(movie.originalLanguage, "en");
    expect(movie.genreIds, [28, 53]);
  });
}
