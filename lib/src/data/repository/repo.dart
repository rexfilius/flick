import 'package:flick/library.dart';
import 'package:hive_flutter/hive_flutter.dart';

class Repo {
  MovieApi _movieApi;
  LocalDatabase _localDatabase;
  TvApi _tvApi;

  Repo._internal()
      : _movieApi = MovieApi(),
        _localDatabase = LocalDatabase(),
        _tvApi = TvApi();
  //
  static final Repo _instance = Repo._internal();
  factory Repo() {
    return _instance;
  }

  static LocalDatabase get localDB => LocalDatabase();

  Box<EntityMovie> getMovieDB() {
    return _localDatabase.getMovieBox();
  }

  Box<EntityTv> getShowDB() {
    return _localDatabase.getTvShowBox();
  }

  void addMovieToDB({required EntityMovie movie}) {
    _localDatabase.addMovieToDatabase(movie: movie);
  }

  void addShowToDB({required EntityTv tvShow}) {
    _localDatabase.addShowToDatabase(tvShow: tvShow);
  }

  void deleteMovieInDB({required EntityMovie movie}) {
    _localDatabase.removeMovieFromDatabase(movie: movie);
  }

  void deleteShowInDB({required EntityTv tvShow}) {
    _localDatabase.removeTvShowFromDatabase(tvShow: tvShow);
  }

  bool isMovieInDB({required EntityMovie movie}) {
    return _localDatabase.isMovieInDatabase(movie: movie);
  }

  bool isShowInDB({required EntityTv tvShow}) {
    return _localDatabase.isTvShowInDatabase(tvShow: tvShow);
  }

  List<EntityMovie> getMovies() {
    return _localDatabase.getMovieListFromDatabase();
  }

  List<EntityTv> getShows() {
    return _localDatabase.getTvShowListFromDatabase();
  }

  Future<MovieNowPlaying> getMovieNowPlaying() async {
    return _movieApi.getNowPlayingMovies();
  }

  Future<MoviePopular> getMoviePopular() async {
    return _movieApi.getPopularMovies();
  }

  Future<MovieTopRated> getMovieTopRated() async {
    return _movieApi.getTopRatedMovies();
  }

  Future<MovieTrending> getMovieTrending() async {
    return _movieApi.getTrendingMovies();
  }

  Future<MovieUpcoming> getMovieUpcoming() async {
    return _movieApi.getUpcomingMovies();
  }

  Future<MovieSearch> searchMovies({required String query}) async {
    return _movieApi.searchMovies(query: query);
  }

  Future<TvOnAir> getTvOnAir() async {
    return _tvApi.getOnTheAirTVShow();
  }

  Future<TvPopular> getTvPopular() async {
    return _tvApi.getPopularTVShow();
  }
}
