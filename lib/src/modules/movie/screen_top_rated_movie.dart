import 'package:flutter/material.dart';
import 'package:flick/library.dart';

class ScreenTopRatedMovie extends StatefulWidget {
  const ScreenTopRatedMovie({super.key});

  @override
  State<ScreenTopRatedMovie> createState() => _ScreenTopRatedMovieState();
}

class _ScreenTopRatedMovieState extends State<ScreenTopRatedMovie> {
  late Future<MovieTopRated> movieTopRated;
  Repo repo = Repo();

  @override
  void initState() {
    super.initState();
    movieTopRated = repo.getMovieTopRated();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Top Rated Movies'),
      ),
      body: Column(
        children: [
          Expanded(
            child: FutureBuilder<MovieTopRated>(
              future: movieTopRated,
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
