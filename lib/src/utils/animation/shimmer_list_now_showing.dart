import 'package:flutter/material.dart';
import 'package:flick/library.dart';

class ShimmerListNowShowing extends StatelessWidget {
  const ShimmerListNowShowing({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return ListView.builder(
      itemCount: 5,
      physics: const NeverScrollableScrollPhysics(),
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Shimmer(
            color: Colors.grey.shade700,
            child: SizedBox(
              width: 0.5 * screenWidth,
              height: 0.7 * screenWidth,
            ),
          ),
        );
      },
    );
  }
}
