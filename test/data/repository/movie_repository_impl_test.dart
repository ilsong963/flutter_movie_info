import 'package:flutter_movie_info/data/data_source/movie_data_source.dart';
import 'package:flutter_movie_info/data/dto/movie_detail_dto.dart';
import 'package:flutter_movie_info/data/repository/movie_repository_impl.dart';
import 'package:flutter_movie_info/domain/entity/movie_detail.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockMovieDataSource extends Mock implements MovieDataSource {}

void main() {
  late final MockMovieDataSource mockMovieDataSource;
  late final MovieRepositoryImpl movieRepositoryImpl;
  setUp(() async {
    mockMovieDataSource = MockMovieDataSource();
    movieRepositoryImpl = MovieRepositoryImpl(mockMovieDataSource);
  });

  test('MovieRepositoryImpl test : fetchMovieDetail', () async {
    // when(() => mockMovieDataSource.fetchMovieDetail(123)).thenAnswer(
    //   (_) async => MovieDetailDto(
    //     adult: false,
    //     backdropPath: 'backdropPath',
    //     belongsToCollection: 'belongsToCollection',
    //     budget: 0,
    //     genres: 'genres',
    //     homepage: 'homepage',
    //     id: 1233069,
    //     imdbId: imdbId,
    //     originCountry: originCountry,
    //     originalLanguage: originalLanguage,
    //     originalTitle: originalTitle,
    //     overview: overview,
    //     popularity: popularity,
    //     posterPath: posterPath,
    //     productionCompanies: productionCompanies,
    //     productionCountries: productionCountries,
    //     releaseDate: releaseDate,
    //     revenue: revenue,
    //     runtime: runtime,
    //     spokenLanguages: spokenLanguages,
    //     status: status,
    //     tagline: tagline,
    //     title: title,
    //     video: video,
    //     voteAverage: voteAverage,
    //     voteCount: voteCount,
    //   ),
    // );

    final result = await movieRepositoryImpl.fetchMovieDetail(123);
    expect(result!.id, 123);
  });

  test('MovieRepositoryImpl test : fetchNowPlayingMovies', () async {
    when(() => mockMovieDataSource.fetchNowPlayingMovies()).thenAnswer(
      (_) async => [MovieDto(title: 'title', released: 'released', runtime: 'runtime', director: 'director', actors: 'actors', poster: 'poster')],
    );

    final result = await movieRepositoryImpl.fetchNowPlayingMovies();
    expect(result.length, 1);
    expect(result[0].title, 'title');
  });
  test('MovieRepositoryImpl test : fetchPopularMovies', () async {
    when(() => mockMovieDataSource.fetchPopularMovies()).thenAnswer(
      (_) async => [MovieDto(title: 'title', released: 'released', runtime: 'runtime', director: 'director', actors: 'actors', poster: 'poster')],
    );

    final result = await movieRepositoryImpl.fetchPopularMovies();
    expect(result.length, 1);
    expect(result[0].title, 'title');
  });
  test('MovieRepositoryImpl test : fetchTopRatedMovies', () async {
    when(() => mockMovieDataSource.fetchTopRatedMovies()).thenAnswer(
      (_) async => [MovieDto(title: 'title', released: 'released', runtime: 'runtime', director: 'director', actors: 'actors', poster: 'poster')],
    );

    final result = await movieRepositoryImpl.fetchTopRatedMovies();
    expect(result.length, 1);
    expect(result[0].title, 'title');
  });
  test('MovieRepositoryImpl test : fetchUpcomingMovies', () async {
    when(() => mockMovieDataSource.fetchUpcomingMovies()).thenAnswer(
      (_) async => [MovieDto(title: 'title', released: 'released', runtime: 'runtime', director: 'director', actors: 'actors', poster: 'poster')],
    );

    final result = await movieRepositoryImpl.fetchUpcomingMovies();
    expect(result.length, 1);
    expect(result[0].title, 'title');
  });
}
