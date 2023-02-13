import 'package:flutter/material.dart';
import 'package:flick/library.dart';
import 'package:hive_flutter/hive_flutter.dart';

class ScreenBookmarkTV extends StatefulWidget {
  const ScreenBookmarkTV({super.key});

  @override
  State<ScreenBookmarkTV> createState() => _ScreenBookmarkTVState();
}

class _ScreenBookmarkTVState extends State<ScreenBookmarkTV> {
  final bookmarkedTvShows = Repo.localDB.getTvShowListFromDatabase();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bookmarked TV Shows'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ValueListenableBuilder(
              valueListenable: Repo().getShowDB().listenable(),
              builder: (context, box, widget) {
                return ListView.builder(
                  itemCount: bookmarkedTvShows.length,
                  itemBuilder: (context, index) {
                    return CardTvShowEntitySummary(
                      tvShow: bookmarkedTvShows[index],
                      clickable: false,
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
