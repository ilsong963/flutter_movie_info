import 'dart:convert';

import 'package:flutter_movie_info/data/dto/movie_response_dto.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('MovieDto : fromJson test', () {
    const jsonString = '''
  {
    "dates": {
      "maximum": "2025-05-14",
      "minimum": "2025-04-02"
    },
    "page": 1,
    "results": [
      {
        "adult": false,
        "backdrop_path": "/bVm6udIB6iKsRqgMdQh6HywuEBj.jpg",
        "genre_ids": [53, 28],
        "id": 1233069,
        "original_language": "de",
        "original_title": "Exterritorial",
        "overview": "When her son vanishes inside a US consulate, ex-special forces soldier Sara does everything in her power to find him — and uncovers a dark conspiracy.",
        "popularity": 673.9539,
        "poster_path": "/jM2uqCZNKbiyStyzXOERpMqAbdx.jpg",
        "release_date": "2025-04-29",
        "title": "Exterritorial",
        "video": false,
        "vote_average": 6.711,
        "vote_count": 206
      }
    ],
    "total_pages": 256,
    "total_results": 5108
  }
  ''';
    final movie = MovieResponseDto.fromJson(jsonDecode(jsonString));

    expect(movie.dates.maximum, equals("2025-05-14"));
    expect(movie.dates.minimum, equals("2025-04-02"));
    expect(movie.page, equals(1));
    expect(movie.totalPages, equals(256));
    expect(movie.totalResults, equals(5108));
    expect(movie.results.length, equals(1));

    expect(movie.results.first.id, equals(1233069));
    expect(movie.results.first.title, equals("Exterritorial"));
  });
}
