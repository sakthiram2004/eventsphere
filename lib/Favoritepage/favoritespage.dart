
import 'package:eventsphere/Routes/Routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class FavoritesScreen extends StatefulWidget {
  const FavoritesScreen({super.key});

  @override
  State<FavoritesScreen> createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends State<FavoritesScreen> {
  int _selectedIndex = 1;
  bool _isfavorite = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 33, 37, 243),
          title: Text(
            "Favorites",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        bottomNavigationBar: GNav(
          selectedIndex: _selectedIndex,
          backgroundColor: Color.fromARGB(255, 33, 37, 243),
          onTabChange: (index) {
            setState(() {
              _selectedIndex = index;
            });
            if (index == 0) {
              Get.toNamed(Routes.homepage);
            } else if (index == 1) {
              Get.toNamed(Routes.favoritepage);
            } else if (index == 2) {
              Get.toNamed(Routes.ticketpage);
            } else if (index == 3) {
              Get.toNamed(Routes.profilepage);
            }
          },
          tabBorderRadius: 5,
          tabs: [
            GButton(
              icon: CupertinoIcons.home,
              text: "Home",
              iconColor: Colors.white,
              textColor: Colors.white,
              iconActiveColor: Colors.white,
            ),
            GButton(
                icon: CupertinoIcons.square_favorites_alt,
                text: "Favorites",
                iconColor: Colors.white,
                textColor: Colors.white,
                iconActiveColor: Colors.white),
            GButton(
                icon: CupertinoIcons.tickets,
                text: "Tickets",
                iconColor: Colors.white,
                textColor: Colors.white,
                iconActiveColor: Colors.white),
            GButton(
                icon: CupertinoIcons.profile_circled,
                text: "Profile",
                iconColor: Colors.white,
                textColor: Colors.white,
                iconActiveColor: Colors.white),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(children: [
                  for (int i = 1; i <= 6; i++)
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
                            alignment: Alignment.bottomRight,
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
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
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
              ),
            ],
          ),
        ));
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
