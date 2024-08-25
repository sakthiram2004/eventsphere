
import 'package:eventsphere/Routes/Routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class TicketScreen extends StatefulWidget {
  const TicketScreen({super.key});

  @override
  State<TicketScreen> createState() => _TicketScreenState();
}

class _TicketScreenState extends State<TicketScreen> {
  int _selectedIndex = 2;
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
    );
  }
}
