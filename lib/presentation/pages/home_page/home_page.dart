import 'package:flutter/material.dart';
import 'package:flutter_movie_info/presentation/widget/common/title_text_widget.dart';
import 'package:flutter_movie_info/presentation/widget/now_playing_movies/now_playing_movies_widget.dart';
import 'package:flutter_movie_info/presentation/widget/popular_movies/most_populer_movie_widget.dart';
import 'package:flutter_movie_info/presentation/widget/popular_movies/popular_movies_widget.dart';
import 'package:flutter_movie_info/presentation/widget/top_rated_movies/top_rated_movies_widget.dart';
import 'package:flutter_movie_info/presentation/widget/upcoming_movies/upcoming_movies_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 21, 20, 34),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TitleTextWidget(title: "가장 인기있는"),
                MostPopulerMovieWidget(),
                SizedBox(height: 16),
                TitleTextWidget(title: "현재 상영중"),
                SizedBox(height: 180, child: NowPlayingMoviesWidget()),
                SizedBox(height: 16),
                TitleTextWidget(title: "인기순"),
                SizedBox(height: 180, child: PopularMoviesWidget()),
                SizedBox(height: 16),
                TitleTextWidget(title: "평점 높은순"),
                SizedBox(height: 180, child: TopRatedMoviesWidget()),
                SizedBox(height: 16),
                TitleTextWidget(title: "개봉예정"),
                SizedBox(height: 180, child: UpcomingMoviesWidget()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
