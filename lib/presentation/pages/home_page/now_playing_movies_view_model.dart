import 'package:flutter_movie_info/domain/entity/movie.dart';
import 'package:flutter_movie_info/provider/providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class NowPlayingMoviesViewModel extends Notifier<List<Movie>?> {
  @override
  List<Movie>? build() {
    fetchNowPlayingMovies();
    return null;
  }

  Future<void> fetchNowPlayingMovies() async {
    state = await ref.read(fetchNowPlayingMoviesUseCaseProvider).execute();
  }
}

final nowPlayingMoviesViewModel = NotifierProvider<NowPlayingMoviesViewModel, List<Movie>?>(() => NowPlayingMoviesViewModel());
