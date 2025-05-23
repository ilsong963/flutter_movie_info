import 'package:flutter/material.dart';
import 'package:flutter_movie_info/presentation/widget/common/poster_widget.dart';
import 'package:flutter_movie_info/presentation/widget/upcoming_movies/upcoming_movies_view_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class UpcomingMoviesWidget extends ConsumerWidget {
  const UpcomingMoviesWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final movies = ref.watch(upcomingMoviesViewModel);
    if (movies == null) {
      return const Center(child: CircularProgressIndicator());
    }
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: movies.length,
      itemBuilder: (context, index) {
        final movie = movies[index];

        return PosterWidget(tagId: "upComing${movie.id}", posterPath: movie.posterPath, id: movie.id);
      },
    );
  }
}
