import 'package:flick/library.dart';

class TvOnAir {
  int? page;
  List<TvResult>? results;
  int? totalPages;
  int? totalResults;

  TvOnAir({
    this.page,
    this.results,
    this.totalPages,
    this.totalResults,
  });

  factory TvOnAir.fromJson(Map<String, dynamic> json) {
    return TvOnAir(
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
      "CLASS": "TvOnAir",
      "page": page,
      "results": results,
      "totalPages": totalPages,
      "totalResults": totalResults,
    }.toString();
  }
}
