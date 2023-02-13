import 'package:flutter/material.dart';
import 'package:flick/library.dart';

class ScreenTrendingMovie extends StatefulWidget {
  const ScreenTrendingMovie({super.key});

  @override
  State<ScreenTrendingMovie> createState() => _ScreenTrendingMovieState();
}

class _ScreenTrendingMovieState extends State<ScreenTrendingMovie> {
  late Future<MovieTrending> movieTrending;
  Repo repo = Repo();

  @override
  void initState() {
    super.initState();
    movieTrending = repo.getMovieTrending();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Trending Movies'),
      ),
      body: Column(
        children: [
          Expanded(
            child: FutureBuilder<MovieTrending>(
              future: movieTrending,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  List<Result> movies = snapshot.data!.results!;
                  return ListView.builder(
                    physics: const BouncingScrollPhysics(
                      parent: AlwaysScrollableScrollPhysics(),
                    ),
                    itemCount: movies.length,
                    itemBuilder: (context, index) {
                      return CardMovieSummary(
                        movie: movies[index],
                        clickable: true,
                      );
                    },
                  );
                }
                return const ShimmerListMovieSummary();
              },
            ),
          ),
        ],
      ),
    );
  }
}
