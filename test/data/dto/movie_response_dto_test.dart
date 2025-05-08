import 'dart:convert';

import 'package:flutter_movie_info/data/dto/movie_detail_dto.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('MovieDto : fromJson test', () {
    const jsonString = '''
 {
  "adult": false,
  "backdrop_path": "/bVm6udIB6iKsRqgMdQh6HywuEBj.jpg",
  "belongs_to_collection": null,
  "budget": 0,
  "genres": [
    {
      "id": 53,
      "name": "Thriller"
    },
    {
      "id": 28,
      "name": "Action"
    }
  ],
  "homepage": "https://www.netflix.com/title/81571720",
  "id": 1233069,
  "imdb_id": "tt30876483",
  "origin_country": [
    "DE",
    "AT"
  ],
  "original_language": "de",
  "original_title": "Exterritorial",
  "overview": "When her son vanishes inside a US consulate, ex-special forces soldier Sara does everything in her power to find him — and uncovers a dark conspiracy.",
  "popularity": 673.9539,
  "poster_path": "/jM2uqCZNKbiyStyzXOERpMqAbdx.jpg",
  "production_companies": [
    {
      "id": 114791,
      "logo_path": "/jeTQ9G3haIbLn8Shrc9OxPafST6.png",
      "name": "Constantin Television",
      "origin_country": "DE"
    },
    {
      "id": 1833,
      "logo_path": "/6Ot5X5xRv0PvZ9cUUD5ZymSruLi.png",
      "name": "Epo-Film",
      "origin_country": "AT"
    }
  ],
  "production_countries": [
    {
      "iso_3166_1": "DE",
      "name": "Germany"
    },
    {
      "iso_3166_1": "AT",
      "name": "Austria"
    }
  ],
  "release_date": "2025-04-29",
  "revenue": 0,
  "runtime": 109,
  "spoken_languages": [
    {
      "english_name": "German",
      "iso_639_1": "de",
      "name": "Deutsch"
    },
    {
      "english_name": "English",
      "iso_639_1": "en",
      "name": "English"
    }
  ],
  "status": "Released",
  "tagline": "",
  "title": "Exterritorial",
  "video": false,
  "vote_average": 6.723,
  "vote_count": 204
}
  ''';
    final movie = MovieDetailDto.fromJson(jsonDecode(jsonString));

    expect(movie.id, equals(1233069));
    expect(movie.title, equals("Exterritorial"));
    expect(movie.status, equals("Released"));
    expect(movie.releaseDate, equals(DateTime.parse("2025-04-29")));
    expect(movie.spokenLanguages.first.englishName, equals("German"));
    expect(movie.spokenLanguages.first.iso6391, equals("de"));
    expect(movie.spokenLanguages.first.name, equals("Deutsch"));
  });
}
