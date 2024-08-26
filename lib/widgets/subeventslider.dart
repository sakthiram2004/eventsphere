import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SubEventSlider extends StatelessWidget {
  const SubEventSlider({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> events = [
      {
        'title': 'Event Title 1',
        'money': '1000',
        'date': 'Date 1 | Time 1',
        'image': 'assets/event.jpg',
      },
      {
        'title': 'Event Title 2',
        'money': 'Location 2',
        'date': 'Date 2 | Time 2',
        'image': 'assets/event.jpg',
      },
      {
        'title': 'Event Title 3',
        'money': 'Location 3',
        'date': 'Date 3 | Time 3',
        'image': 'assets/event.jpg',
      },
      {
        'title': 'Event Title 4',
        'money': 'Location 4',
        'date': 'Date 4 | Time 4',
        'image': 'assets/event.jpg',
      },
      {
        'title': 'Event Title 5',
        'money': 'Location 5',
        'date': 'Date 5 | Time 5',
        'image': 'assets/event.jpg',
      },
    ];

    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: screenWidth * 0.03, // 3% of screen width
              vertical: screenHeight * 0.01, // 1% of screen height
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Events",
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
            height: screenHeight * 0.30, // 35% of screen height
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: events.length,
              itemBuilder: (context, index) {
                final event = events[index];
                return Container(
                  margin: EdgeInsets.all(
                      screenWidth * 0.025), // 2.5% of screen width
                  // padding: EdgeInsets.all(
                  //     screenWidth * 0.0125), // 1.25% of screen width
                  width: screenWidth * 0.60, // 40% of screen width
                  decoration: BoxDecoration(
                    // color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(
                        screenWidth * 0.0375), // 3.75% of screen width
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.all(
                            screenWidth * 0.025), // 2.5% of screen width
                        width: screenWidth * 0.60, // 35% of screen width
                        height: screenHeight * 0.18, // 18% of screen height
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                              screenWidth * 0.0375), // 3.75% of screen width
                          image: DecorationImage(
                            image: AssetImage(event['image']!),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  left: screenWidth *
                                      0.0375), // 3.75% of screen width
                              child: Text(
                                event['title']!,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize:
                                      screenWidth * 0.04, // 4% of screen width
                                ),
                              ),
                            ),
                            SizedBox(
                                height:
                                    screenHeight * 0.01), // 1% of screen height
                            Padding(
                              padding: EdgeInsets.only(
                                  left: screenWidth *
                                      0.025), // 2.5% of screen width
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.monetization_on,
                                    size: screenWidth *
                                        0.05, // 5% of screen width
                                  ),
                                  SizedBox(
                                      width: screenWidth *
                                          0.0125), // 1.25% of screen width
                                  Expanded(
                                    child: Text(
                                      event['money']!,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: screenWidth *
                                            0.035, // 3.5% of screen width
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
