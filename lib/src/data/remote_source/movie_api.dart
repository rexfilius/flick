import 'dart:convert';
import 'dart:io';
import 'package:flick/private/token.dart';
import 'package:flick/library.dart';
import 'package:http/http.dart' as http;

class MovieApi {
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

  /// Get a list of the current popular movies on TMDB.
  /// This list updates daily[From the TMDB API].
  Future<MoviePopular> getPopularMovies() async {
    const String url =
        "${ApiConstants.movieBaseUrl}movie/popular?api_key=$apiKey";
    try {
      final response = await client.get(Uri.parse(url));
      if (response.statusCode == 200) {
        return MoviePopular.fromJson(jsonDecode(response.body));
      } else {
        throw '${response.body} - failed to get popular movies';
      }
    } on SocketException {
      throw 'You are not connected to the internet';
    } catch (e) {
      throw e.toString();
    }
  }

  /// Get the top rated movies on TMDB.
  Future<MovieTopRated> getTopRatedMovies() async {
    const String url =
        "${ApiConstants.movieBaseUrl}movie/top_rated?api_key=$apiKey";
    try {
      final response = await client.get(Uri.parse(url));
      if (response.statusCode == 200) {
        return MovieTopRated.fromJson(jsonDecode(response.body));
      } else {
        throw '${response.body} - failed to get top rated movies';
      }
    } on SocketException {
      throw 'You are not connected to the internet';
    } catch (e) {
      throw e.toString();
    }
  }

  /// Get the daily or weekly trending items. The daily trending list tracks
  ///  items over the period of a day while items have a 24 hour half life.
  /// The weekly list tracks items over a 7 day period, with a 7 day half life.
  Future<MovieTrending> getTrendingMovies() async {
    const String url =
        "${ApiConstants.movieBaseUrl}trending/movie/day?api_key=$apiKey";
    try {
      final response = await client.get(Uri.parse(url));
      if (response.statusCode == 200) {
        return MovieTrending.fromJson(jsonDecode(response.body));
      } else {
        throw '${response.body} - failed to get trending movies';
      }
    } on SocketException {
      throw 'You are not connected to the internet';
    } catch (e) {
      throw e.toString();
    }
  }

  /// Get a list of upcoming movies in theatres. This is a release type query
  /// that looks for all movies that have a release type of 2 or 3 within
  /// the specified date range.
  Future<MovieUpcoming> getUpcomingMovies() async {
    const String url =
        "${ApiConstants.movieBaseUrl}movie/upcoming?api_key=$apiKey";
    try {
      final response = await client.get(Uri.parse(url));
      if (response.statusCode == 200) {
        return MovieUpcoming.fromJson(jsonDecode(response.body));
      } else {
        throw '${response.body}: Error: failed to get upcoming movies';
      }
    } on SocketException {
      throw 'You are not connected to the internet';
    } catch (e) {
      throw e.toString();
    }
  }

  /// This function uses the http package to return a list of movies
  /// from the api that match the query data it received. The 'query'
  /// data is expected to be a 'movie title'.
  Future<MovieSearch> searchMovies({required String query}) async {
    String url =
        "${ApiConstants.movieBaseUrl}search/movie?api_key=$apiKey&query=$query&adult=false";

    try {
      final response = await client.get(Uri.parse(url));
      if (response.statusCode == 200) {
        return MovieSearch.fromJson(jsonDecode(response.body));
      } else {
        throw '${response.body}: Error: could not search movies';
      }
    } on SocketException {
      throw 'You are not connected to the internet';
    } catch (e) {
      throw e.toString();
    }
  }
}
