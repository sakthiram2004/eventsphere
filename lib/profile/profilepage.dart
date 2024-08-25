import 'package:eventsphere/Routes/Routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  int _selectedIndex = 3;
  void logout() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove("token");
    Get.offAllNamed(Routes.loginscreen);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 33, 37, 243),
          title: Text(
            "Profile",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 15,
              ),
              Container(
                height: 185,
                width: 400,
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 60,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "profile name",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Divider(),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: InkWell(
                  onTap: () {
                    Get.toNamed(Routes.profileEditing);
                  },
                  child: Container(
                    width: 400,
                    height: 50,

                    // color: Colors.yellow,
                    child: Row(
                      children: [
                        Icon(
                          Icons.mode_edit_sharp,
                          color: Color.fromARGB(255, 33, 37, 243),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text("Edit Profile"),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Icon(Icons.arrow_forward_ios_sharp),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Container(
                  width: 400,
                  height: 50,
                  // color: Colors.yellow,
                  child: Row(
                    children: [
                      Icon(
                        Icons.date_range_sharp,
                        color: Color.fromARGB(255, 33, 37, 243),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text("My Booking"),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Icon(Icons.arrow_forward_ios_sharp),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Container(
                  width: 400,
                  height: 60,
                  // color: Colors.yellow,
                  child: Row(
                    children: [
                      Icon(
                        CupertinoIcons.profile_circled,
                        color: Color.fromARGB(255, 33, 37, 243),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text("Profile"),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Icon(Icons.arrow_forward_ios_sharp),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: InkWell(
                  onTap: () {
                    Get.toNamed(Routes.pickimage);
                  },
                  child: Container(
                    width: 400,
                    height: 60,
                    // color: Colors.yellow,
                    child: Row(
                      children: [
                        Icon(
                          CupertinoIcons.hand_point_right,
                          color: Color.fromARGB(255, 33, 37, 243),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text("Verification status"),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Container(
                            child: Text("Apply"),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Divider(),
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Container(
                  width: 400,
                  height: 60,
                  // color: Colors.yellow,
                  child: Row(
                    children: [
                      Icon(
                        CupertinoIcons.conversation_bubble,
                        color: Color.fromARGB(255, 33, 37, 243),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text("Contact Us"),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Icon(Icons.arrow_forward_ios_sharp),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: InkWell(
                  onTap: logout,
                  child: Container(
                    width: 400,
                    height: 60,
                    // color: Colors.yellow,
                    child: Row(
                      children: [
                        Icon(Icons.logout_outlined),
                        SizedBox(
                          width: 5,
                        ),
                        Text("Log Out"),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Icon(
                            Icons.arrow_forward_ios_sharp,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
