import 'package:flutter/material.dart';

class CategorySlide extends StatelessWidget {
  final List<String> symbols = [
    "Symbol 1",
    "Symbol 2",
    "Symbol 3",
    "Symbol 4",
    "Symbol 5",
    "Symbol 6"
  ];

  @override
  Widget build(BuildContext context) {
    // Get the screen width and height using MediaQuery
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return SizedBox(
      height: screenHeight * 0.05,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: symbols.length,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.symmetric(
              horizontal: screenWidth * 0.015, // 1.5% of the screen width
            ),
            padding:
                EdgeInsets.all(screenWidth * 0.02), // 2% of the screen width
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(
                  screenWidth * 0.05), // 5% of the screen width
            ),
            child: Row(
              children: [
                Container(
                  width: screenWidth * 0.1, // 10% of the screen width
                  height: screenWidth * 0.1, // 10% of the screen width
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage(
                          'assets/event.jpg'), // Placeholder for image path
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(
                    width: screenWidth * 0.012), // 1.2% of the screen width
                Text(
                  symbols[index],
                  style: TextStyle(
                    fontSize: screenWidth * 0.035, // 3.5% of the screen width
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
