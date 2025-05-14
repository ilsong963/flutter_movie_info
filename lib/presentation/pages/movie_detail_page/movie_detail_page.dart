import 'package:flutter/material.dart';
import 'package:flutter_movie_info/constant/constant.dart';
import 'package:flutter_movie_info/presentation/pages/movie_detail_page/widget/movie_detail_content_widget.dart';
import 'package:flutter_movie_info/presentation/pages/movie_detail_page/movie_detail_view_model.dart';
import 'package:flutter_movie_info/presentation/widget/common/poster_widget.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MovieDetailPage extends ConsumerStatefulWidget {
  const MovieDetailPage({super.key, required this.posterPath, required this.id});
  final String posterPath;
  final int id;

  @override
  ConsumerState<MovieDetailPage> createState() => _MovieDetailPageState();
}

class _MovieDetailPageState extends ConsumerState<MovieDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Hero(
            tag: widget.id,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: AspectRatio(aspectRatio: 2 / 3, child: Image.network("$moviePosterUrlPrefix${widget.posterPath}", fit: BoxFit.cover)),
              ),
            ),
          ),
          MovieDetailContentWidget(),
        ],
      ),
    );
  }
}
