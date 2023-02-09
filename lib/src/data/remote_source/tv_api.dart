import 'dart:convert';
import 'dart:io';
import 'package:flick/private/token.dart';
import 'package:flick/library.dart';
import 'package:http/http.dart' as http;

const String tvBaseUrl = "https://api.themoviedb.org/3/";
const String tvBaseUrlImage = "https://image.tmdb.org/t/p/original";

class TvApi {
  static http.Client client = http.Client();

  /// Get a list of shows that are currently on the air.
  /// This query looks for any TV show that has an episode with an air
  /// date in the next 7 days.
  Future<TvOnAir> getOnTheAirTVShow() async {
    const String url = "${tvBaseUrl}tv/on_the_air?api_key=$apiKey";
    try {
      final response = await client.get(Uri.parse(url));
      if (response.statusCode == 200) {
        return TvOnAir.fromJson(jsonDecode(response.body));
      } else {
        throw '${response.body} - failed to get on-the-air tv show';
      }
    } on SocketException {
      throw 'You are not connected to the internet';
    } catch (e) {
      throw e.toString();
    }
  }

  /// Get a list of the current popular TV shows on TMDB.
  /// This list updates daily[From the TMDB API].
  Future<TvPopular> getPopularTVShow() async {
    const String url = "${tvBaseUrl}tv/popular?api_key=$apiKey";
    try {
      final response = await client.get(Uri.parse(url));
      if (response.statusCode == 200) {
        return TvPopular.fromJson(jsonDecode(response.body));
      } else {
        throw '${response.body} - failed to get popular TV show';
      }
    } on SocketException {
      throw 'You are not connected to the internet';
    } catch (e) {
      throw e.toString();
    }
  }
}
