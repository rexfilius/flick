import 'package:flutter/material.dart';
import 'package:flick/library.dart';

class ScreenExplore extends StatelessWidget {
  const ScreenExplore({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      physics: const BouncingScrollPhysics(
        parent: AlwaysScrollableScrollPhysics(),
      ),
      crossAxisCount: 2,
      mainAxisSpacing: 10.0,
      crossAxisSpacing: 10.0,
      children: [
        CardExplore(
          color: Colors.teal.shade100,
          title: 'Bookmarked Movies',
          onPressed: null,
        ),
        CardExplore(
          color: Colors.teal.shade200,
          title: 'Bookmarked TV shows',
          onPressed: null,
        ),
        CardExplore(
          color: Colors.teal.shade300,
          title: 'Popular TV shows',
          onPressed: null,
        ),
        CardExplore(
          color: Colors.teal.shade100,
          title: 'Bookmarked Movies',
          onPressed: null,
        ),
        CardExplore(
          color: Colors.teal.shade100,
          title: 'Bookmarked Movies',
          onPressed: null,
        ),
      ],
    );
  }
}
