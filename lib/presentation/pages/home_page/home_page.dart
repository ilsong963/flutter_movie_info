import 'package:flutter/material.dart';
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
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("가장 인기있는", style: TextStyle(color: Colors.white, fontSize: 20)),
              MostPopulerMovieWidget(),
              SizedBox(height: 16),
              Text("현재 상영중", style: TextStyle(color: Colors.white, fontSize: 20)),
              SizedBox(height: 180, child: NowPlayingMoviesWidget()),
              SizedBox(height: 16),
              Text("인기순", style: TextStyle(color: Colors.white, fontSize: 20)),
              SizedBox(height: 180, child: PopularMoviesWidget()),
              SizedBox(height: 16),
              Text("평점 높은순", style: TextStyle(color: Colors.white, fontSize: 20)),
              SizedBox(height: 180, child: TopRatedMoviesWidget()),
              SizedBox(height: 16),
              Text("개봉예정", style: TextStyle(color: Colors.white, fontSize: 20)),
              SizedBox(height: 180, child: UpcomingMoviesWidget()),
            ],
          ),
        ),
      ),
    );
  }
}
