import 'package:flutter/material.dart';
import 'package:flick/library.dart';

class ShimmerListTvSummary extends StatelessWidget {
  const ShimmerListTvSummary({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double widgetHeight = 0.7 * screenWidth;
    double widgetWidth = 0.95 * screenWidth;
    return ListView.builder(
      itemCount: 10,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Shimmer(
            color: Colors.blueGrey,
            child: SizedBox(
              width: widgetWidth,
              height: widgetHeight,
            ),
          ),
        );
      },
    );
  }
}
