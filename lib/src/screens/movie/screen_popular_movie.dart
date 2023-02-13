import 'package:flutter/material.dart';
import 'package:flick/library.dart';

class ScreenPopularMovie extends StatefulWidget {
  const ScreenPopularMovie({super.key});

  @override
  State<ScreenPopularMovie> createState() => _ScreenPopularMovieState();
}

class _ScreenPopularMovieState extends State<ScreenPopularMovie> {
  late Future<MoviePopular> moviePopular;
  Repo repo = Repo();

  @override
  void initState() {
    super.initState();
    moviePopular = repo.getMoviePopular();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Popular Movies'),
      ),
      body: Column(
        children: [
          Expanded(
            child: FutureBuilder<MoviePopular>(
              future: moviePopular,
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
