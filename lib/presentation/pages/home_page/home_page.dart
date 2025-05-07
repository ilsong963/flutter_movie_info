import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Text('가장 인기있는'),
            Placeholder(),
            Text('현재 상영중'),
            Placeholder(),
            Text('인기순'),
            Placeholder(),
            Text('평점 높은순'),
            Placeholder(),
            Text('개봉예정'),
            Placeholder(),
          ],
        ),
      ),
    );
  }
}
