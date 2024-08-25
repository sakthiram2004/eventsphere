import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LatestEventWidget extends StatelessWidget {
  const LatestEventWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // List of dummy event data
    final List<Map<String, String>> events = List.generate(
      5,
      (index) => {
        'title': 'Event Title ${index + 1}',
        'location': 'Location ${index + 1}',
        'date': 'Date ${index + 1}',
        'time': 'Time ${index + 1}',
        'image': 'assets/event.jpg',
      },
    );

    final screenWidth = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: screenWidth * 0.03, // 3% of screen width
            vertical: screenWidth * 0.02, // 2% of screen width
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Latest Event",
                style: TextStyle(
                  color: const Color.fromARGB(255, 33, 37, 243),
                  fontSize: screenWidth * 0.045, // 4.5% of screen width
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "See All",
                style: TextStyle(
                  color: const Color.fromARGB(255, 33, 37, 243),
                  fontSize: screenWidth * 0.035, // 3.5% of screen width
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: screenWidth *
              0.625, // 62.5% of screen width (e.g., 250px for 400px wide screen)
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: events.length,
            itemBuilder: (context, index) {
              final event = events[index];
              return InkWell(
                onTap: () {
                  Get.toNamed('/eventdetails'); // Updated the route
                },
                child: Container(
                  margin: EdgeInsets.all(
                      screenWidth * 0.025), // 2.5% of screen width
                  padding: EdgeInsets.all(
                      screenWidth * 0.0125), // 1.25% of screen width
                  width: screenWidth * 0.4, // 40% of screen width
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                        screenWidth * 0.0375), // 3.75% of screen width
                    image: DecorationImage(
                      image: AssetImage(event['image']!),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        event['title']!,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: screenWidth * 0.04, // 4% of screen width
                        ),
                      ),
                      Spacer(),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            color: Colors.white,
                            size: screenWidth * 0.05, // 5% of screen width
                          ),
                          Expanded(
                            child: Text(
                              event['location']!,
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize:
                                    screenWidth * 0.035, // 3.5% of screen width
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                          height: screenWidth * 0.025), // 2.5% of screen width
                      Row(
                        children: [
                          Icon(
                            Icons.date_range,
                            color: Colors.white,
                            size: screenWidth * 0.05, // 5% of screen width
                          ),
                          Expanded(
                            child: Text(
                              event['date']!,
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize:
                                    screenWidth * 0.035, // 3.5% of screen width
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                          height: screenWidth * 0.025), // 2.5% of screen width
                      Row(
                        children: [
                          Icon(
                            Icons.timelapse,
                            color: Colors.white,
                            size: screenWidth * 0.05, // 5% of screen width
                          ),
                          Expanded(
                            child: Text(
                              event['time']!,
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize:
                                    screenWidth * 0.035, // 3.5% of screen width
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
