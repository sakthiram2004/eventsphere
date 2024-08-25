import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyCart extends StatelessWidget {
  const MyCart({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140, // Set height for the image cards
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5, // Assuming 5 images
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            width: MediaQuery.of(context).size.width *
                0.8, // Set width to 80% of screen
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 5,
                  offset: const Offset(0, 5),
                ),
              ],
              image: const DecorationImage(
                image:
                    AssetImage('assets/event.jpg'), // Replace with your image
                fit: BoxFit.cover,
              ),
            ),
          );
        },
      ),
    );
  }
}
