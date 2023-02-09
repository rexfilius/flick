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
}
