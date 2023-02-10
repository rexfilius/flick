import 'package:flutter/material.dart';
import 'package:flick/library.dart';

class AppRoutes {
  static const screenHome = '/home_screen';
  static const screenMovie = '/movies_screen';
  static const screenExplore = '/explore_screen';
  static const screenMovieDetail = '/movie_detail_screen';
  static const screenTvDetail = '/tv_detail_screen';
}

Map<String, Widget Function(BuildContext)> appRoutesMap = {
  AppRoutes.screenHome: (context) => const ScreenHome(),
  AppRoutes.screenMovie: (context) => const ScreenMovie(),
  AppRoutes.screenExplore: (context) => const ScreenExplore(),
  AppRoutes.screenMovieDetail: (context) => const ScreenMovieDetail(),
  AppRoutes.screenTvDetail: (context) => const ScreenTvDetail(),
};
