import 'package:flutter/material.dart';
import 'package:flutter_movie_info/presentation/widget/common/poster_widget.dart';
import 'package:flutter_movie_info/presentation/widget/top_rated_movies/top_rated_movies_view_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MostPopulerMovieWidget extends ConsumerWidget {
  const MostPopulerMovieWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final movies = ref.watch(topRatedMoviesViewModel);
    if (movies == null) {
      return const Center(child: CircularProgressIndicator());
    }
    return PosterWidget(tagId: "mostPopuler${movies[0].id}", posterPath: movies[0].posterPath, id: movies[0].id);
  }
}
