import 'package:flutter_movie_info/domain/entity/movie_detail.dart';
import 'package:flutter_movie_info/domain/repository/movie_repository.dart';

class FetchMovieDetailUseCase {
  final MovieRepository repository;

  FetchMovieDetailUseCase(this.repository);

  Future<MovieDetail?> call(int id) {
    return repository.fetchMovieDetail(id);
  }
}
