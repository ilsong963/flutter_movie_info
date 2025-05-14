import 'package:flutter_movie_info/domain/entity/movie.dart';
import 'package:flutter_movie_info/provider/providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TopRatedMoviesViewModel extends Notifier<List<Movie>?> {
  @override
  List<Movie>? build() {
    fetchTopRatedMovies();
    return null;
  }

  Future<void> fetchTopRatedMovies() async {
    state = await ref.read(fetchTopRatedMoviesUseCaseProvider).execute();
  }
}

final fetchTopRatedMovies = NotifierProvider<TopRatedMoviesViewModel, List<Movie>?>(() => TopRatedMoviesViewModel());
