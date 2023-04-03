import 'package:flutter/material.dart';
import 'package:flick/library.dart';

class ScreenExplore extends StatelessWidget {
  const ScreenExplore({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      physics: const BouncingScrollPhysics(
        parent: AlwaysScrollableScrollPhysics(),
      ),
      crossAxisCount: 2,
      mainAxisSpacing: 10.0,
      crossAxisSpacing: 10.0,
      children: [
        CardExplore(
          color: Colors.teal.shade100,
          title: 'Bookmarked Movies',
          navigateTo: AppRoutes.screenBookmarkMovie,
        ),
        CardExplore(
          color: Colors.teal.shade200,
          title: 'Bookmarked TV shows',
          navigateTo: AppRoutes.screenBookmarkTv,
        ),
        CardExplore(
          color: Colors.teal.shade300,
          title: 'Popular TV shows',
          navigateTo: AppRoutes.screenPopularTV,
        ),
        CardExplore(
          color: Colors.teal.shade400,
          title: 'Popular Movies',
          navigateTo: AppRoutes.screenPopularMovie,
        ),
        CardExplore(
          color: Colors.teal.shade500,
          title: 'Trending Movies',
          navigateTo: AppRoutes.screenTrendingMovie,
        ),
        CardExplore(
          color: Colors.teal.shade600,
          title: 'Top rated Movies',
          navigateTo: AppRoutes.screenTopRatedMovie,
        ),
      ],
    );
  }
}
