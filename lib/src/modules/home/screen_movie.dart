import 'package:flutter/material.dart';
import 'package:flick/library.dart';

class ScreenMovie extends StatefulWidget {
  const ScreenMovie({super.key});

  @override
  State<ScreenMovie> createState() => _ScreenMovieState();
}

class _ScreenMovieState extends State<ScreenMovie> {
  late Future<MovieNowPlaying> movieNowPlaying;
  late Future<MovieUpcoming> movieUpcoming;
  late Future<TvOnAir> tvOnAir;

  Repo repo = Repo();

  @override
  void initState() {
    super.initState();
    movieNowPlaying = repo.getMovieNowPlaying();
    movieUpcoming = repo.getMovieUpcoming();
    tvOnAir = repo.getTvOnAir();
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return ListView(
      physics: const BouncingScrollPhysics(
        parent: AlwaysScrollableScrollPhysics(),
      ),
      children: [
        const Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: EdgeInsets.only(left: 8.0, top: 8.0, bottom: 8.0),
            child: Text(
              'Movies (Now Showing)',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        SizedBox(
          width: 0.55 * screenWidth,
          height: 0.75 * screenWidth,
          child: FutureBuilder<MovieNowPlaying>(
            future: movieNowPlaying,
            builder: (context, snapshot) {
              if (snapshot.hasError) {
                return Center(child: Text(snapshot.error.toString()));
              }
              if (snapshot.hasData) {
                List<Result> movieList = snapshot.data!.results!;
                return ListView.builder(
                  physics: const BouncingScrollPhysics(
                    parent: AlwaysScrollableScrollPhysics(),
                  ),
                  scrollDirection: Axis.horizontal,
                  itemCount: movieList.length,
                  itemBuilder: (context, index) {
                    Result movie = movieList[index];
                    return CardNowShowing(
                      movie: movie,
                      clickable: true,
                    );
                  },
                );
              }
              return const ShimmerListNowShowing();
            },
          ),
        ),
        const Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: EdgeInsets.only(left: 8.0, top: 8.0, bottom: 8.0),
            child: Text(
              'TV Shows (On Air)',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        SizedBox(
          width: 0.55 * screenWidth,
          height: 0.75 * screenWidth,
          child: FutureBuilder<TvOnAir>(
            future: tvOnAir,
            builder: (context, snapshot) {
              if (snapshot.hasError) {
                return Center(child: Text(snapshot.error.toString()));
              }
              if (snapshot.hasData) {
                List<TvResult> tvShowList = snapshot.data!.results!;
                return ListView.builder(
                  physics: const BouncingScrollPhysics(
                    parent: AlwaysScrollableScrollPhysics(),
                  ),
                  itemCount: tvShowList.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return CardNowShowingTV(
                      tvShow: tvShowList[index],
                      clickable: true,
                    );
                  },
                );
              }
              return const ShimmerListNowShowing();
            },
          ),
        ),
      ],
    );
  }
}
