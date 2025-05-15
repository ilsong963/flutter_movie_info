import 'package:flutter/material.dart';
import 'package:flutter_movie_info/presentation/widget/common/poster_widget.dart';
import 'package:flutter_movie_info/presentation/widget/popular_movies/popular_movies_view_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PopularMoviesWidget extends ConsumerWidget {
  const PopularMoviesWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final movies = ref.watch(popularMoviesViewModel);
    if (movies == null) {
      return const Center(child: CircularProgressIndicator());
    }
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: movies.length,
      itemBuilder: (context, index) {
        final movie = movies[index];

        return Stack(
          children: [
            Padding(padding: EdgeInsets.only(left: 10), child: PosterWidget(tagId: "popular${movie.id}", posterPath: movie.posterPath, id: movie.id)),
            Align(alignment: Alignment.bottomLeft, child: Text("${index + 1}", style: TextStyle(fontSize: 60, fontWeight: FontWeight.bold))),
          ],
        );
      },
    );
  }
}
