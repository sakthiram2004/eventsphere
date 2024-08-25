import 'package:eventsphere/Routes/Routes.dart';
import 'package:eventsphere/widgets/latesteventwidget.dart';
import 'package:eventsphere/widgets/nearbyeventwidget.dart';
import 'package:eventsphere/widgets/upcommingeventwidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

// Adjust the import path as needed

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: GNav(
        selectedIndex: _selectedIndex,
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
      backgroundColor: Color.fromARGB(255, 33, 37, 243),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(right: 20, left: 15, top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.menu, color: Colors.white, size: 30),
                    Container(
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 33, 37, 243),
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.white.withOpacity(0.5),
                              blurRadius: 2,
                            )
                          ]),
                      child: InkWell(
                        onTap: () {},
                        child: Icon(
                          Icons.notifications,
                          size: 30,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  children: [
                    Text(
                      "Welcome To Evently",
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(15),
                padding: EdgeInsets.symmetric(horizontal: 15),
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: [
                    Icon(Icons.search),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      width: 250,
                      child: TextFormField(
                        decoration: InputDecoration(
                            hintText: "Search", border: InputBorder.none),
                      ),
                    ),
                    Spacer(),
                    Icon(Icons.send_rounded)
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                height: 40,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      for (int i = 1; i <= 6; i++)
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 8),
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Center(child: Text("symbol")),
                        ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.only(top: 20),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    LatestEventWidget(),
                    SizedBox(
                      height: 10,
                    ),
                    Nearbyeventwidget(),
                    SizedBox(
                      height: 10,
                    ),
                    UpCommingEventWidgit()
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
