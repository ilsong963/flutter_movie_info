import 'package:flutter_movie_info/domain/entity/movie.dart';
import 'package:flutter_movie_info/domain/repository/movie_repository.dart';

class FetchTopRatedMoviesUseCase {
  final MovieRepository repository;

  FetchTopRatedMoviesUseCase(this.repository);

  Future<List<Movie>?> execute() {
    return repository.fetchTopRatedMovies();
  }
}
