import 'package:flutter/material.dart';
import 'package:flick/library.dart';

class AppRoutes {
  static const screenHome = '/home_screen';
  static const screenMovie = '/movies_screen';
  static const screenExplore = '/explore_screen';
  static const screenMovieDetail = '/movie_detail_screen';
  static const screenTvDetail = '/tv_detail_screen';
  static const screenBookmarkMovie = '/movie_bookmark_screen';
  static const screenBookmarkTv = '/tv_bookmark_screen';
  static const screenPopularMovie = '/popular_movie_screen';
  static const screenTopRatedMovie = '/top_rated_movie_screen';
  static const screenTrendingMovie = '/trending_movie_screen';
  static const screenPopularTV = '/popular_tv_screen';
}

Map<String, Widget Function(BuildContext)> appRoutesMap = {
  AppRoutes.screenHome: (context) => const ScreenHome(),
  AppRoutes.screenMovie: (context) => const ScreenMovie(),
  AppRoutes.screenExplore: (context) => const ScreenExplore(),
  AppRoutes.screenMovieDetail: (context) => const ScreenMovieDetail(),
  AppRoutes.screenTvDetail: (context) => const ScreenTvDetail(),
  AppRoutes.screenBookmarkMovie: (context) => const ScreenBookmarkMovie(),
  AppRoutes.screenBookmarkTv: (context) => const ScreenBookmarkTV(),
  AppRoutes.screenPopularMovie: (context) => const ScreenPopularMovie(),
  AppRoutes.screenTopRatedMovie: (context) => const ScreenTopRatedMovie(),
  AppRoutes.screenTrendingMovie: (context) => const ScreenTrendingMovie(),
  AppRoutes.screenPopularTV: (context) => const ScreenPopularTV(),
};
