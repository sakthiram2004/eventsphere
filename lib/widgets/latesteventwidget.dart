
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LatestEventWidget extends StatelessWidget {
  const LatestEventWidget({super.key});

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
                "Latest Event",
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
                InkWell(
                  onTap: () {
                    // Get.to(EventDescription());
                  },
                  child: Container(
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.all(5),
                    height: 250,
                    width: 160,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        image: DecorationImage(
                            image: AssetImage("assets/event.jpg"),
                            fit: BoxFit.cover)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Event Title",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 110,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.location_on,
                              color: Colors.white,
                            ),
                            Expanded(
                              child: Text(
                                "Location",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.date_range,
                              color: Colors.white,
                            ),
                            Expanded(
                              child: Text(
                                "Date ",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.timelapse,
                              color: Colors.white,
                            ),
                            Expanded(
                              child: Text(
                                "Time ",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),

                    // child: Row(
                    //   children: [
                    //     Padding(
                    //       padding: EdgeInsets.all(5),
                    //     )
                    //   ],

                    // ),
                  ),
                )
            ],
          ),
        )
      ],
    );
  }
}
