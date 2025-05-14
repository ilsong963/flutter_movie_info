import 'package:flutter_movie_info/domain/entity/movie.dart';
import 'package:flutter_movie_info/provider/providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PopularMoviesViewModel extends Notifier<List<Movie>?> {
  @override
  List<Movie>? build() {
    fetchPopularMovies();
    return null;
  }

  Future<void> fetchPopularMovies() async {
    state = await ref.read(fetchPopularMoviesUseCaseProvider).execute();
  }
}

final popularMoviesViewModel = NotifierProvider<PopularMoviesViewModel, List<Movie>?>(() => PopularMoviesViewModel());
