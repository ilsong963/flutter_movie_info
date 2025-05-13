import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter_movie_info/data/dto/movie_response_dto.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  test('MovieDto : fromJson test', () async {
    final jsonString = await rootBundle.loadString('test/data/dto/data_json/dto_movie_detail_test_data.json');
    final jsonMap = json.decode(jsonString);

    final movie = MovieResponseDto.fromJson(jsonMap);

    expect(movie.dates?.maximum, equals(DateTime.parse("2025-05-14")));
    expect(movie.dates?.minimum, equals(DateTime.parse("2025-04-02")));
    expect(movie.page, equals(1));
    expect(movie.totalPages, equals(256));
    expect(movie.totalResults, equals(5108));
    expect(movie.results.length, equals(1));

    expect(movie.results.first.id, equals(1233069));
    expect(movie.results.first.title, equals("Exterritorial"));
  });
}
