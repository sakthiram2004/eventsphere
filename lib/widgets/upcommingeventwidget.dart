import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UpCommingEventWidgit extends StatelessWidget {
  const UpCommingEventWidgit({super.key});

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
                "Upcoming Event",
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
        Column(children: [
          for (int i = 1; i < 6; i++)
            Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(5),
              height: 130,
              width: 350,
              decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(15)),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.all(10),
                    height: 90,
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                            image: AssetImage("assets/event.jpg"),
                            fit: BoxFit.cover)),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    // padding: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Event Title",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        Row(
                          children: [
                            Icon(Icons.date_range),
                            Text("Date time"),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.location_on),
                            Text("Location"),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
        ]),
      ],
    );
  }
}
