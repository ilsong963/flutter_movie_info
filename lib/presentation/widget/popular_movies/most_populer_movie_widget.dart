import 'package:flutter/material.dart';
import 'package:flutter_movie_info/constant/constant.dart';
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
    return Padding(
      padding: EdgeInsets.all(20),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.network("$moviePosterUrlPrefix${movies[0].posterPath}", fit: BoxFit.cover),
      ),
    );
  }
}
