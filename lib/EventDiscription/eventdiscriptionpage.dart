import 'package:eventsphere/Routes/Routes.dart';
import 'package:eventsphere/widgets/subeventslider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EventDescription extends StatefulWidget {
  const EventDescription({super.key});

  @override
  State<EventDescription> createState() => _EventDescriptionState();
}

class _EventDescriptionState extends State<EventDescription> {
  bool _isfavorite = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ElevatedButton(
        child: Text(
          "Book Now",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: Color.fromARGB(255, 33, 37, 243),
          elevation: 0,
        ),
        onPressed: () {},
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                  image: DecorationImage(
                    image: AssetImage("assets/event.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  children: [
                    SizedBox(height: 40),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.4),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30)),
                            ),
                            child: InkWell(
                              onTap: () => {Get.toNamed(Routes.homepage)},
                              child: Icon(
                                Icons.arrow_back_ios_new_outlined,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(right: 20.0),
                          child: Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.4),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30)),
                            ),
                            child: Checkfavorite(),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Title",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.4),
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                          ),
                          child: Icon(
                            Icons.date_range,
                            color: Color.fromARGB(255, 33, 37, 243),
                          ),
                        ),
                        SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Date",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                            Text("Time"),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.4),
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                          ),
                          child: Icon(
                            Icons.location_on_rounded,
                            color: Color.fromARGB(255, 33, 37, 243),
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: Text(
                            "Location",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.4),
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                          ),
                          child: Icon(
                            Icons.price_change_outlined,
                            color: Color.fromARGB(255, 33, 37, 243),
                          ),
                        ),
                        SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "2000-3000",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                            Text("Ticket Price"),
                          ],
                        ),
                        Spacer(),
                        Text(
                          "100 spots left",
                          style: TextStyle(
                              color: Colors.red, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    SizedBox(height: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Organized By",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        SizedBox(height: 8),
                        Row(
                          children: [
                            CircleAvatar(
                              child: Icon(Icons.crop_original_outlined),
                              radius: 25,
                            ),
                            SizedBox(width: 8),
                            Text(
                              "Name",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            )
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 8),
                    Text(
                      "About Event",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    SizedBox(height: 8),
                    Text("Event description"),
                    SizedBox(height: 8),
                    SubEventSlider(),
                    SizedBox(height: 8),
                    Text(
                      "Image",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          for (int i = 1; i < 6; i++)
                            InkWell(
                              onTap: () {},
                              child: Container(
                                margin: EdgeInsets.all(10),
                                padding: EdgeInsets.all(5),
                                height: 150,
                                width: 150,
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15)),
                                    image: DecorationImage(
                                        image: AssetImage("assets/event.jpg"),
                                        fit: BoxFit.cover)),
                              ),
                            )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget Checkfavorite() {
    return IconButton(
        onPressed: () {
          setState(() {
            _isfavorite = !_isfavorite;
          });
        },
        icon: _isfavorite
            ? Icon(
                Icons.favorite,
                color: Color.fromARGB(255, 33, 37, 243),
              )
            : Icon(
                Icons.favorite_border,
                color: Colors.white,
              ));
  }
}
