import 'package:flutter/material.dart';
import 'package:flutter_movie_info/constant/constant.dart';
import 'package:flutter_movie_info/presentation/pages/movie_detail_page/movie_detail_page.dart';
import 'package:flutter_movie_info/presentation/pages/movie_detail_page/movie_detail_view_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PosterWidget extends ConsumerWidget {
  const PosterWidget({super.key, required this.posterPath, required this.id});
  final String posterPath;
  final int id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: () {
        ref.read(movieDetailViewModel.notifier).fetch(id);
        Navigator.push(context, MaterialPageRoute(builder: (context) => MovieDetailPage(posterPath: posterPath, id: id)));
      },
      child: Hero(
        tag: id,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: AspectRatio(aspectRatio: 2 / 3, child: Image.network("$moviePosterUrlPrefix$posterPath", fit: BoxFit.cover)),
          ),
        ),
      ),
    );
  }
}
