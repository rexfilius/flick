import 'package:flutter/material.dart';

class CardExplore extends StatelessWidget {
  const CardExplore({
    required this.color,
    required this.title,
    required this.navigateTo,
    super.key,
  });

  final Color color;
  final String title;
  final String navigateTo;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, navigateTo);
      },
      child: SizedBox(
        width: 0.3 * screenWidth,
        height: 0.3 * screenWidth,
        child: Card(
          color: color,
          elevation: 14.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14.0),
          ),
          child: Center(
            child: Text(
              title,
              softWrap: true,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
