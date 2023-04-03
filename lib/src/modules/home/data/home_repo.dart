import 'dart:convert';
import 'dart:io';
import 'package:flick/private/token.dart';
import 'package:flick/library.dart';
import 'package:http/http.dart' as http;

class HomeRepo {
  static http.Client client = http.Client();

  /// Get a list of movies in theatres. This is a release type query that looks
  /// for all movies that have a release type of 2 or 3 within the
  /// specified date range.
  Future<MovieNowPlaying> getNowPlayingMovies() async {
    const String url =
        "${ApiConstants.movieBaseUrl}movie/now_playing?api_key=$apiKey";
    try {
      final response = await client.get(Uri.parse(url));
      if (response.statusCode == 200) {
        return MovieNowPlaying.fromJson(jsonDecode(response.body));
      } else {
        throw '${response.body} - failed to get now playing movies';
      }
    } on SocketException {
      throw 'You are not connected to the internet';
    } catch (e) {
      throw e.toString();
    }
  }
}
