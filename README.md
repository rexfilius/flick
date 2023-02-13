# flick

A directory app for cinema

## Getting Started

To run the app, you need an API key from [MovieDB](https://www.themoviedb.org/)

The app was built with these versions of the Dart & Flutter SDKs:
- Dart = 2.19.1
- Flutter = 3.7.1

## How it works
On app startup, the first screen has an AppBar and a BottomNavigationBar with two tabs - Cinema & Explore.
A search icon is also present on the AppBar, where the user can click and search for movie titles.

The 'Cinema' tab shows two horizontal ListViews with data gotten from the api.

The 'Explore' tab has a GridView of cards which the user can click to browse bookmarks and other categories of movies and TV shows.

When a movie or TV show item on a list is clicked, it navigates to another screen, where more details of the movie are shown.
On this movie detail screen, the user can bookmark a movie or tv show.

The bookmarked movies or tv shows are stored in a local database on the phone using the [hive](https://pub.dev/packages/hive) package.

## Packages/Libraries Used For Development
- [http](https://pub.dev/packages/http) = a Future-based library for making HTTP requests.
- [hive](https://pub.dev/packages/hive) = a lightweight and blazing fast key-value database written in pure Dart.
- [cached_network_image](https://pub.dev/packages/cached_network_image) = a Flutter library to show images from the internet and keep them in the cache directory.
- [path_provider](https://pub.dev/packages/path_provider) = a Flutter plugin for finding commonly used locations on the filesystem.
- [flutter_svg](https://pub.dev/packages/flutter_svg) = an SVG rendering and widget library for Flutter.
- [google_fonts](https://pub.dev/packages/google_fonts) = A package to include fonts from fonts.google.com in your Flutter app.
