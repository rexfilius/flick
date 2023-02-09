import 'package:flick/library.dart';

class TvPopular {
  int? page;
  List<TvResult>? results;
  int? totalPages;
  int? totalResults;

  TvPopular({
    this.page,
    this.results,
    this.totalPages,
    this.totalResults,
  });

  factory TvPopular.fromJson(Map<String, dynamic> json) {
    return TvPopular(
      page: json["page"],
      results: List<TvResult>.from(
        json["results"].map((e) => TvResult.fromJson(e)),
      ),
      totalPages: json["total_pages"],
      totalResults: json["total_results"],
    );
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map["page"] = page;
    map["results"] = results?.map((e) => e.toJson()).toList() ?? [];
    map["total_pages"] = totalPages;
    map["total_results"] = totalResults;
    return map;
  }

  @override
  String toString() {
    return {
      "CLASS": "TvPopular",
      "page": page,
      "results": results,
      "totalPages": totalPages,
      "totalResults": totalResults,
    }.toString();
  }
}
