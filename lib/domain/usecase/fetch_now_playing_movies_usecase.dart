import 'package:flutter_movie_info/domain/entity/movie.dart';
import 'package:flutter_movie_info/domain/repository/movie_repository.dart';

class FetchNowPlayingMoviesUseCase {
  final MovieRepository repository;

  FetchNowPlayingMoviesUseCase(this.repository);

  Future<List<Movie>?> execute() {
    return repository.fetchNowPlayingMovies();
  }
}
