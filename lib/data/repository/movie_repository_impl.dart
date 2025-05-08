import 'package:flutter_movie_info/data/data_source/movie_data_source.dart';
import 'package:flutter_movie_info/domain/entity/movie.dart';
import 'package:flutter_movie_info/domain/entity/movie_detail.dart';
import 'package:flutter_movie_info/domain/repository/movie_repository.dart';

class MovieRepositoryImpl implements MovieRepository {
  final MovieDataSource movieDataSource;

  MovieRepositoryImpl(this.movieDataSource);

  @override
  Future<MovieDetail?> fetchMovieDetail(int id) async {
    final result = await movieDataSource.fetchMovieDetail(id);

    if (result == null) {
      return null;
    }
    return MovieDetail(
      id: result.id,
      budget: result.budget,
      title: result.title,
      overview: result.overview,
      releaseDate: result.releaseDate,
      voteAverage: result.voteAverage,
      genres: result.genres,
      productionCompanyLogos: result.productionCompanies.map((company) => company.logoPath).toList(),
      popularity: result.popularity,
      revenue: result.revenue,
      runtime: result.runtime,
      tagline: result.tagline,
      voteCount: result.voteCount,
    );
  }

  @override
  Future<List<Movie>?> fetchNowPlayingMovies() async {
    final result = await movieDataSource.fetchNowPlayingMovies();

    if (result == null) {
      return null;
    }
    return result.results.map((x) => Movie(id: x.id, posterPath: x.posterPath)).toList();
  }

  @override
  Future<List<Movie>?> fetchPopularMovies() async {
    final result = await movieDataSource.fetchPopularMovies();

    if (result == null) {
      return null;
    }
    return result.results.map((x) => Movie(id: x.id, posterPath: x.posterPath)).toList();
  }

  @override
  Future<List<Movie>?> fetchTopRatedMovies() async {
    final result = await movieDataSource.fetchTopRatedMovies();

    if (result == null) {
      return null;
    }
    return result.results.map((x) => Movie(id: x.id, posterPath: x.posterPath)).toList();
  }

  @override
  Future<List<Movie>?> fetchUpcomingMovies() async {
    final result = await movieDataSource.fetchUpcomingMovies();

    if (result == null) {
      return null;
    }
    return result.results.map((x) => Movie(id: x.id, posterPath: x.posterPath)).toList();
  }
}
