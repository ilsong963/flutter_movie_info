import 'package:flutter_movie_info/domain/entity/movie.dart';
import 'package:flutter_movie_info/provider/providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class UpcomingMoviesViewModel extends Notifier<List<Movie>?> {
  @override
  List<Movie>? build() {
    fetchUpcomingMovies();
    return null;
  }

  Future<void> fetchUpcomingMovies() async {
    state = await ref.read(fetchUpcomingMoviesUseCaseProvider).execute();
  }
}

final upcomingMoviesViewModel = NotifierProvider<UpcomingMoviesViewModel, List<Movie>?>(() => UpcomingMoviesViewModel());
