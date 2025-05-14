import 'package:flutter/material.dart';
import 'package:flutter_movie_info/constant/constant.dart';
import 'package:flutter_movie_info/presentation/pages/movie_detail_page/movie_detail_view_model.dart';
import 'package:flutter_movie_info/presentation/pages/movie_detail_page/widget/value_box_widget.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

class MovieDetailContentWidget extends ConsumerWidget {
  const MovieDetailContentWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final movieDetail = ref.watch(movieDetailViewModel);

    if (movieDetail == null) {
      return const Center(child: CircularProgressIndicator());
    } else {
      return Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 제목 + 상영일
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(child: Text(movieDetail.title, style: Theme.of(context).textTheme.titleLarge)),
                Text(DateFormat('yyyy-MM-dd').format(movieDetail.releaseDate), style: Theme.of(context).textTheme.bodySmall),
              ],
            ),
            const SizedBox(height: 4),
            Text('${movieDetail.tagline}\n${movieDetail.runtime}분', style: Theme.of(context).textTheme.bodyMedium),

            const SizedBox(height: 12),
            Wrap(
              spacing: 8,
              children:
                  movieDetail.genres.map((genre) {
                    return Chip(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                      label: Text(genre),
                      labelStyle: TextStyle(color: Colors.blue),
                    );
                  }).toList(),
            ),

            const SizedBox(height: 16),
            // 줄거리
            Text(movieDetail.overview, style: Theme.of(context).textTheme.bodyMedium),

            const SizedBox(height: 24),
            Text('흥행정보', style: Theme.of(context).textTheme.titleMedium),

            const SizedBox(height: 12),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ValueBoxWidget(title: '평점', value: movieDetail.voteAverage.toString()),
                  ValueBoxWidget(title: '평점투표수', value: movieDetail.voteCount.toString()),
                  ValueBoxWidget(title: '인기점수', value: movieDetail.popularity.toString()),
                  ValueBoxWidget(title: '수익', value: movieDetail.revenue.toString()),
                ],
              ),
            ),

            const SizedBox(height: 24),
            Text('제작사', style: Theme.of(context).textTheme.titleMedium),
            const SizedBox(height: 12),

            SizedBox(
              height: 60,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: movieDetail.productionCompanyLogos.length,
                itemBuilder: (context, index) {
                  return Opacity(
                    opacity: 0.9,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.network("$moviePosterUrlPrefix${movieDetail.productionCompanyLogos[index]}", height: 50),
                        ),
                      ),
                    ),
                  );
                },
                separatorBuilder: (_, __) => const SizedBox(width: 12),
              ),
            ),
          ],
        ),
      );
    }
  }
}
