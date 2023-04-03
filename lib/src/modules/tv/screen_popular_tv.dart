import 'package:flutter/material.dart';
import 'package:flick/library.dart';

class ScreenPopularTV extends StatefulWidget {
  const ScreenPopularTV({super.key});

  @override
  State<ScreenPopularTV> createState() => _ScreenPopularTVState();
}

class _ScreenPopularTVState extends State<ScreenPopularTV> {
  late Future<TvPopular> tvPopular;
  Repo repo = Repo();

  @override
  void initState() {
    super.initState();
    tvPopular = repo.getTvPopular();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Popular TV Shows'),
      ),
      body: Column(
        children: [
          Expanded(
            child: FutureBuilder<TvPopular>(
              future: tvPopular,
              builder: (context, snapshot) {
                if (snapshot.hasError) {
                  return Center(child: Text(snapshot.error.toString()));
                }
                if (snapshot.hasData) {
                  List<TvResult> tvShowList = snapshot.data!.results!;
                  return ListView.builder(
                    itemCount: tvShowList.length,
                    itemBuilder: (context, index) {
                      return CardTvSummary(
                        tvShow: tvShowList[index],
                        clickable: true,
                      );
                    },
                  );
                }
                return const ShimmerListTvSummary();
              },
            ),
          )
        ],
      ),
    );
  }
}
