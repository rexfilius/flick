import 'package:hive_flutter/hive_flutter.dart';
import 'package:flick/library.dart';

const String movieDatabaseName = 'movie_database';
const String tvShowDatabaseName = 'tv_show_database';

class LocalDatabase {
  Box<EntityMovie> getMovieBox() => Hive.box(movieDatabaseName);
  Box<EntityTv> getTvShowBox() => Hive.box(tvShowDatabaseName);

  void addMovieToDatabase({required EntityMovie movie}) {
    final box = getMovieBox();
    if (box.containsKey(movie.id)) {
      return;
    } else {
      box.put(movie.id, movie);
    }
  }

  void addShowToDatabase({required EntityTv tvShow}) {
    final box = getTvShowBox();
    if (box.containsKey(tvShow.id)) {
      return;
    } else {
      box.put(tvShow.id, tvShow);
    }
  }

  void removeMovieFromDatabase({required EntityMovie movie}) {
    final box = getMovieBox();
    if (box.containsKey(movie.id)) {
      box.delete(movie.id);
    } else {
      return;
    }
  }

  void removeTvShowFromDatabase({required EntityTv tvShow}) {
    final box = getTvShowBox();
    if (box.containsKey(tvShow.id)) {
      box.delete(tvShow.id);
    } else {
      return;
    }
  }

  bool isMovieInDatabase({required EntityMovie movie}) {
    final box = getMovieBox();
    if (box.containsKey(movie.id)) {
      return true;
    } else {
      return false;
    }
  }

  bool isTvShowInDatabase({required EntityTv tvShow}) {
    final box = getTvShowBox();
    if (box.containsKey(tvShow.id)) {
      return true;
    } else {
      return false;
    }
  }

  List<EntityMovie> getMovieListFromDatabase() {
    final box = getMovieBox();
    final movieList = box.values.toList().cast<EntityMovie>();
    return movieList;
  }

  List<EntityTv> getTvShowListFromDatabase() {
    final box = getTvShowBox();
    final showList = box.values.toList().cast<EntityTv>();
    return showList;
  }
}
