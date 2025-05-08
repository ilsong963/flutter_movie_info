import 'package:flutter_movie_info/domain/entity/movie.dart';
import 'package:flutter_movie_info/domain/repository/movie_repository.dart';

class FetchPopularMoviesUseCase {
  final MovieRepository repository;

  FetchPopularMoviesUseCase(this.repository);

  Future<List<Movie>?> excute() {
    return repository.fetchPopularMovies();
  }
}
