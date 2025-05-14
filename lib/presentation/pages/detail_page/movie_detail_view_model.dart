import 'package:flutter_movie_info/domain/entity/movie_detail.dart';
import 'package:flutter_movie_info/provider/providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MovieDetailViewModel extends Notifier<MovieDetail?> {
  @override
  MovieDetail? build() {
    return null;
  }

  Future<void> fetch(int id) async {
    final result = await ref.read(fetchMovieDetailUseCaseProvider).execute(id);
    state = result;
  }
}

final movieDetailViewModel = NotifierProvider<MovieDetailViewModel, MovieDetail?>(() => MovieDetailViewModel());
