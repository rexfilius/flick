import 'dart:convert';
import 'dart:io';
import 'package:flick/private/token.dart';
import 'package:flick/library.dart';
import 'package:http/http.dart' as http;
import 'package:async/async.dart';

const String movieBaseUrl = "https://api.themoviedb.org/3/";
const String movieBaseUrlImage = "https://image.tmdb.org/t/p/original";
