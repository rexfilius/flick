import 'package:hive_flutter/adapters.dart';

part 'entity_tv.g.dart';

@HiveType(typeId: 2)
class EntityTv extends HiveObject {
  @HiveField(0)
  String? firstAirDate;

  @HiveField(1)
  List<int>? genreIds;

  @HiveField(2)
  int? id;

  @HiveField(3)
  String? name;

  @HiveField(4)
  List<String>? originCountry;

  @HiveField(5)
  String? originalLanguage;

  @HiveField(6)
  String? originalName;

  @HiveField(7)
  String? overview;

  @HiveField(8)
  double? popularity;

  @HiveField(9)
  String? posterPath;

  @HiveField(10)
  num? voteAverage;

  @HiveField(11)
  int? voteCount;

  EntityTv({
    this.firstAirDate,
    this.genreIds,
    this.id,
    this.name,
    this.originCountry,
    this.originalLanguage,
    this.originalName,
    this.overview,
    this.popularity,
    this.posterPath,
    this.voteAverage,
    this.voteCount,
  });

  @override
  String toString() {
    return {
      "CLASS": "EntityTV",
      "firstAirDate": firstAirDate,
      "genreIds": genreIds,
      "id": id,
      "name": name,
      "originCountry": originCountry,
      "originalLanguage": originalLanguage,
      "originalName": originalName,
      "overview": overview,
      "popularity": popularity,
      "posterPath": posterPath,
      "voteAverage": voteAverage,
      "voteCount": voteCount,
    }.toString();
  }
}
