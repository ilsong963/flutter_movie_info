import 'package:dio/dio.dart';
import 'package:flutter/services.dart';
import 'package:flutter_movie_info/data/data_source/movie_data_source_impl.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockDio extends Mock implements Dio {}

void main() {
  late final MovieDataSourceImpl movieDataSourceImpl;
  late final MockDio dio;
  setUp(() async {
    dio = MockDio();
    movieDataSourceImpl = MovieDataSourceImpl(dio);
  });

  test('MovieDataSourceImpl: fetchNowPlayingMovies', () async {
    // 가짜데이터 주입
    when(() => dio.get(any())).thenAnswer(
      (_) async => Response(
        data: [
          {
            "dates": {"maximum": "2025-05-14", "minimum": "2025-04-02"},
            "page": 1,
            "results": [
              {
                "adult": false,
                "backdrop_path": "/bVm6udIB6iKsRqgMdQh6HywuEBj.jpg",
                "genre_ids": [53, 28],
                "id": 1233069,
                "original_language": "de",
                "original_title": "Exterritorial",
                "overview":
                    "When her son vanishes inside a US consulate, ex-special forces soldier Sara does everything in her power to find him — and uncovers a dark conspiracy.",
                "popularity": 599.2458,
                "poster_path": "/jM2uqCZNKbiyStyzXOERpMqAbdx.jpg",
                "release_date": "2025-04-29",
                "title": "Exterritorial",
                "video": false,
                "vote_average": 6.7,
                "vote_count": 208,
              },
            ],
            "total_pages": 257,
            "total_results": 5128,
          },
        ],
        requestOptions: RequestOptions(path: ''),
      ),
    );

    // 호출
    final result = await movieDataSourceImpl.fetchNowPlayingMovies();
    // 검증
    expect(result!.results.length, 1);
  });
  test('MovieDataSourceImpl: fetchPopularMovies', () async {
    // 가짜데이터 주입
    when(() => dio.get(any())).thenAnswer(
      (_) async => Response(
        data: [
          {
            "page": 1,
            "results": [
              {
                "adult": false,
                "backdrop_path": "/bVm6udIB6iKsRqgMdQh6HywuEBj.jpg",
                "genre_ids": [53, 28],
                "id": 1233069,
                "original_language": "de",
                "original_title": "Exterritorial",
                "overview":
                    "When her son vanishes inside a US consulate, ex-special forces soldier Sara does everything in her power to find him — and uncovers a dark conspiracy.",
                "popularity": 599.2458,
                "poster_path": "/jM2uqCZNKbiyStyzXOERpMqAbdx.jpg",
                "release_date": "2025-04-29",
                "title": "Exterritorial",
                "video": false,
                "vote_average": 6.7,
                "vote_count": 208,
              },
            ],
            "total_pages": 50176,
            "total_results": 1003507,
          },
        ],
        requestOptions: RequestOptions(path: ''),
      ),
    );

    // 호출
    final result = await movieDataSourceImpl.fetchPopularMovies();
    // 검증
    expect(result!.results.first.id, 1233069);
  });
  test('MovieDataSourceImpl: fetchTopRatedMovies', () async {
    // 가짜데이터 주입
    when(() => dio.get(any())).thenAnswer(
      (_) async => Response(
        data: [
          {
            "page": 1,
            "results": [
              {
                "adult": false,
                "backdrop_path": "/kXfqcdQKsToO0OUXHcrrNCHDBzO.jpg",
                "genre_ids": [18, 80],
                "id": 278,
                "original_language": "en",
                "original_title": "The Shawshank Redemption",
                "overview":
                    "Imprisoned in the 1940s for the double murder of his wife and her lover, upstanding banker Andy Dufresne begins a new life at the Shawshank prison, where he puts his accounting skills to work for an amoral warden. During his long stretch in prison, Dufresne comes to be admired by the other inmates -- including an older prisoner named Red -- for his integrity and unquenchable sense of hope.",
                "popularity": 33.0665,
                "poster_path": "/9cqNxx0GxF0bflZmeSMuL5tnGzr.jpg",
                "release_date": "1994-09-23",
                "title": "The Shawshank Redemption",
                "video": false,
                "vote_average": 8.71,
                "vote_count": 28248,
              },
            ],
            "total_pages": 507,
            "total_results": 10122,
          },
        ],
        requestOptions: RequestOptions(path: ''),
      ),
    );

    // 호출
    final result = await movieDataSourceImpl.fetchTopRatedMovies();
    // 검증
    expect(result!.results.first.id, 278);
  });
  test('MovieDataSourceImpl: fetchUpcomingMovies', () async {
    // 가짜데이터 주입
    when(() => dio.get(any())).thenAnswer(
      (_) async => Response(
        data: [
          {
            "dates": {"maximum": "2025-06-04", "minimum": "2025-05-14"},
            "page": 1,
            "results": [
              {
                "adult": false,
                "backdrop_path": "/eDBZN0TbWkxoAB0qIDFagVcPPTN.jpg",
                "genre_ids": [27, 14, 35, 12],
                "id": 1153714,
                "original_language": "en",
                "original_title": "Death of a Unicorn",
                "overview":
                    "A father and daughter accidentally hit and kill a unicorn while en route to a weekend retreat, where his billionaire boss seeks to exploit the creature’s miraculous curative properties.",
                "popularity": 218.0482,
                "poster_path": "/lXR32JepFwD1UHkplWqtBP1K79z.jpg",
                "release_date": "2025-03-27",
                "title": "Death of a Unicorn",
                "video": false,
                "vote_average": 6.4,
                "vote_count": 165,
              },
            ],
            "total_pages": 50,
            "total_results": 994,
          },
        ],
        requestOptions: RequestOptions(path: ''),
      ),
    );

    // 호출
    final result = await movieDataSourceImpl.fetchUpcomingMovies();
    // 검증
    expect(result!.results.first.id, 1153714);
  });
  test('MovieDataSourceImpl: fetchMovieDetail', () async {
    // 가짜데이터 주입
    when(() => dio.get(any())).thenAnswer(
      (_) async => Response(
        data: [
          {
            "adult": false,
            "backdrop_path": "/bVm6udIB6iKsRqgMdQh6HywuEBj.jpg",
            "belongs_to_collection": null,
            "budget": 0,
            "genres": [
              {"id": 53, "name": "Thriller"},
              {"id": 28, "name": "Action"},
            ],
            "homepage": "https://www.netflix.com/title/81571720",
            "id": 1233069,
            "imdb_id": "tt30876483",
            "origin_country": ["DE", "AT"],
            "original_language": "de",
            "original_title": "Exterritorial",
            "overview":
                "When her son vanishes inside a US consulate, ex-special forces soldier Sara does everything in her power to find him — and uncovers a dark conspiracy.",
            "popularity": 599.2458,
            "poster_path": "/jM2uqCZNKbiyStyzXOERpMqAbdx.jpg",
            "production_companies": [
              {"id": 114791, "logo_path": "/jeTQ9G3haIbLn8Shrc9OxPafST6.png", "name": "Constantin Television", "origin_country": "DE"},
              {"id": 1833, "logo_path": "/6Ot5X5xRv0PvZ9cUUD5ZymSruLi.png", "name": "Epo-Film", "origin_country": "AT"},
            ],
            "production_countries": [
              {"iso_3166_1": "DE", "name": "Germany"},
              {"iso_3166_1": "AT", "name": "Austria"},
            ],
            "release_date": "2025-04-29",
            "revenue": 0,
            "runtime": 109,
            "spoken_languages": [
              {"english_name": "German", "iso_639_1": "de", "name": "Deutsch"},
              {"english_name": "English", "iso_639_1": "en", "name": "English"},
            ],
            "status": "Released",
            "tagline": "",
            "title": "Exterritorial",
            "video": false,
            "vote_average": 6.7,
            "vote_count": 208,
          },
        ],
        requestOptions: RequestOptions(path: ''),
      ),
    );

    // 호출
    final result = await movieDataSourceImpl.fetchMovieDetail(1233069);
    // 검증
    expect(result!.id, 1233069);
    expect(result.originalTitle, "Exterritorial");
  });
}
