import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Nearbyeventwidget extends StatelessWidget {
  const Nearbyeventwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Nearby Event",
                style: TextStyle(
                    color: Color.fromARGB(255, 33, 37, 243),
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              Text("See All",
                  style: TextStyle(
                    color: Color.fromARGB(255, 33, 37, 243),
                  ))
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              for (int i = 1; i < 6; i++)
                Container(
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(5),
                  height: 260,
                  width: 160,
                  decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(15)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.all(10),
                        width: 150,
                        height: 130,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            image: DecorationImage(
                                image: AssetImage("assets/event.jpg"),
                                fit: BoxFit.cover)),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 15),
                              child: Text(
                                "Event Title",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.location_on,
                                  ),
                                  Expanded(
                                    child: Text(
                                      "Location",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Divider(
                              thickness: 2,
                              color: Color.fromARGB(255, 33, 37, 243),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.date_range,
                                  ),
                                  Expanded(
                                    child: Text(
                                      "Date | Time",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                )
            ],
          ),
        )
      ],
    );
  }
}
