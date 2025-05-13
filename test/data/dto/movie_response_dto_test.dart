import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter_movie_info/data/dto/movie_detail_dto.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  test('MovieDto : fromJson test', () async {
    final jsonString = await rootBundle.loadString('test/data/dto/data_json/dto_movie_response_test_data.json');
    final jsonMap = json.decode(jsonString);

    final movie = MovieDetailDto.fromJson(jsonMap);

    expect(movie.id, equals(1233069));
    expect(movie.title, equals("Exterritorial"));
    expect(movie.status, equals("Released"));
    expect(movie.releaseDate, equals(DateTime.parse("2025-04-29")));
    expect(movie.spokenLanguages.first.englishName, equals("German"));
    expect(movie.spokenLanguages.first.iso6391, equals("de"));
    expect(movie.spokenLanguages.first.name, equals("Deutsch"));
  });
}
