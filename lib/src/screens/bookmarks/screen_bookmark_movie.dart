import 'package:flutter/material.dart';
import 'package:flick/library.dart';
import 'package:hive_flutter/hive_flutter.dart';

class ScreenBookmarkMovie extends StatefulWidget {
  const ScreenBookmarkMovie({super.key});

  @override
  State<ScreenBookmarkMovie> createState() => _ScreenBookmarkMovieState();
}

class _ScreenBookmarkMovieState extends State<ScreenBookmarkMovie> {
  final bookmarkedMovies = Repo.localDB.getMovieListFromDatabase();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bookmarked Movies'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ValueListenableBuilder(
                valueListenable: Repo().getMovieDB().listenable(),
                builder: (context, box, widget) {
                  return ListView.builder(
                    itemCount: bookmarkedMovies.length,
                    itemBuilder: (context, index) {
                      return CardMovieEntitySummary(
                        movie: bookmarkedMovies[index],
                        clickable: false,
                      );
                    },
                  );
                }),
          ),
        ],
      ),
    );
  }
}
