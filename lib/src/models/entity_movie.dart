import 'package:hive_flutter/adapters.dart';

part 'entity_movie.g.dart';

@HiveType(typeId: 1)
class EntityMovie extends HiveObject {
  @HiveField(0)
  bool? adult;

  @HiveField(1)
  List<int>? genreIds;

  @HiveField(2)
  int? id;

  @HiveField(3)
  String? originalLanguage;

  @HiveField(4)
  String? originalTitle;

  @HiveField(5)
  String? overview;

  @HiveField(6)
  double? popularity;

  @HiveField(7)
  String? releaseDate;

  @HiveField(8)
  String? title;

  @HiveField(9)
  double? voteAverage;

  @HiveField(10)
  int? voteCount;

  @HiveField(11)
  String? posterPath;

  EntityMovie({
    this.adult,
    this.genreIds,
    this.id,
    this.originalLanguage,
    this.originalTitle,
    this.overview,
    this.popularity,
    this.releaseDate,
    this.title,
    this.voteAverage,
    this.voteCount,
    this.posterPath,
  });

  @override
  String toString() {
    return {
      "CLASS": "EntityMovie",
      "adult": adult,
      "genreIds": genreIds,
      "id": id,
      "originalLanguage": originalLanguage,
      "originalTitle": originalTitle,
      "overview": overview,
      "popularity": popularity,
      "releaseDate": releaseDate,
      "title": title,
      "voteAverage": voteAverage,
      "voteCount": voteCount,
      "posterPath": posterPath,
    }.toString();
  }
}
