import 'package:flutter/material.dart';
import 'package:flutter_movie_info/constant/constant.dart';

class PosterWidget extends StatelessWidget {
  const PosterWidget({super.key, required this.posterPath});
  final String posterPath;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: AspectRatio(aspectRatio: 2 / 3, child: Image.network("$moviePosterUrlPrefix$posterPath", fit: BoxFit.cover)),
      ),
    );
  }
}
