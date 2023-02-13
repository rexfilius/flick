import 'package:flutter/material.dart';
import 'package:flick/library.dart';

class ScreenTvDetail extends StatefulWidget {
  const ScreenTvDetail({super.key});

  @override
  State<ScreenTvDetail> createState() => _ScreenTvDetailState();
}

class _ScreenTvDetailState extends State<ScreenTvDetail> {
  Repo repo = Repo();

  @override
  Widget build(BuildContext context) {
    final tvShow = ModalRoute.of(context)!.settings.arguments as TvResult;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'TV Show',
          overflow: TextOverflow.ellipsis,
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(
          parent: AlwaysScrollableScrollPhysics(),
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            left: 16.0,
            right: 16.0,
            top: 8.0,
            bottom: 8.0,
          ),
          child: Column(
            children: [
              Material(
                elevation: 18.0,
                child: FadeInImage.assetNetwork(
                  width: 0.85 * screenWidth,
                  height: 1.4 * screenWidth,
                  placeholder: 'assets/loading_image.gif',
                  image: "$tvBaseUrlImage${tvShow.posterPath}",
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 16.0,
                  left: 8.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: Text(
                        "${tvShow.name}",
                        style: const TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () async {
                        final aBoolean = await showSaveDialog(context);
                        if (aBoolean) {
                          EntityTv entityTvShow =
                              await tvShow.convertToDatabaseModel();
                          repo.addShowToDB(tvShow: entityTvShow);
                        }
                      },
                      icon: const Icon(Icons.bookmark_border_sharp),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 16.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Description',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  "${tvShow.overview}",
                  style: const TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0, top: 8.0),
                child: Row(
                  children: [
                    const Text(
                      'First Aired: ',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "${tvShow.firstAirDate}",
                      style: const TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
