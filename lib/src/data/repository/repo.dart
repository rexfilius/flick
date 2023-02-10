import 'package:flick/library.dart';

class Repo {
  MovieApi movieApi;
  LocalDatabase localDatabase;
  TvApi tvApi;

  Repo._internal()
      : movieApi = MovieApi(),
        localDatabase = LocalDatabase(),
        tvApi = TvApi();
  //
  static final Repo _instance = Repo._internal();
  factory Repo() {
    return _instance;
  }

  void addMovieToDB({required EntityMovie movie}) {
    localDatabase.addMovieToDatabase(movie: movie);
  }

  void addShowToDB({required EntityTv tvShow}) {
    localDatabase.addShowToDatabase(tvShow: tvShow);
  }

  void deleteMovieInDB({required EntityMovie movie}) {
    localDatabase.removeMovieFromDatabase(movie: movie);
  }

  void deleteShowInDB({required EntityTv tvShow}) {
    localDatabase.removeTvShowFromDatabase(tvShow: tvShow);
  }

  bool isMovieInDB({required EntityMovie movie}) {
    return localDatabase.isMovieInDatabase(movie: movie);
  }

  bool isShowInDB({required EntityTv tvShow}) {
    return localDatabase.isTvShowInDatabase(tvShow: tvShow);
  }

  List<EntityMovie> getMovies() {
    return localDatabase.getMovieListFromDatabase();
  }

  List<EntityTv> getShows() {
    return localDatabase.getTvShowListFromDatabase();
  }

  Future<MovieNowPlaying> getMovieNowPlaying() async {
    return movieApi.getNowPlayingMovies();
  }

  Future<MoviePopular> getMoviePopular() async {
    return movieApi.getPopularMovies();
  }

  Future<MovieTopRated> getMovieTopRated() async {
    return movieApi.getTopRatedMovies();
  }

  Future<MovieTrending> getMovieTrending() async {
    return movieApi.getTrendingMovies();
  }

  Future<MovieUpcoming> getMovieUpcoming() async {
    return movieApi.getUpcomingMovies();
  }

  Future<MovieSearch> searchMovies({required String query}) async {
    return movieApi.searchMovies(query: query);
  }

  Future<TvOnAir> getTvOnAir() async {
    return tvApi.getOnTheAirTVShow();
  }

  Future<TvPopular> getTvPopular() async {
    return tvApi.getPopularTVShow();
  }
}
