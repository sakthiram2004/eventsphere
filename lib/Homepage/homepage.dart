import 'package:eventsphere/Routes/Routes.dart';
import 'package:eventsphere/widgets/catogeryslide.dart';
import 'package:eventsphere/widgets/filter.dart';
import 'package:eventsphere/widgets/latesteventwidget.dart';
import 'package:eventsphere/widgets/mycart.dart';
import 'package:eventsphere/widgets/nearbyeventwidget.dart';
import 'package:eventsphere/widgets/upcommingeventwidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    int _selectedIndex = 0;

    // Define your specific list of items here
    final List<String> _items = [
      "Chennai",
      "Coimbatore",
      "Cuddalore",
      "Dharmapuri",
      "Dindigul",
      "Erode",
      "Kallakurichi",
      "Kanchipuram",
      "Kanyakumari",
      "Karur",
      "Krishnagiri",
      "Madurai",
      "Nagapattinam",
      "Namakkal",
      "Nilgiris",
      "Perambalur",
      "Pudukkottai",
      "Ramanathapuram",
      "Salem",
      "Sivaganga",
      "Tenkasi",
      "Thanjavur",
      "Theni",
      "Thoothukudi",
      "Tiruchirappalli",
      "Tirunelveli",
      "Tirupathur",
      "Tiruppur",
      "Tiruvallur",
      "Tiruvannamalai",
      "Vellore",
      "Viluppuram",
      "Virudhunagar"
    ];
    Set<String> _selectedItems = Set<String>();

    void _showSelectionDialog() async {
      final selectedItems = await showDialog<Set<String>>(
        context: context,
        builder: (BuildContext context) {
          return SelectableListDialog(items: _items);
        },
      );

      if (selectedItems != null) {
        setState(() {
          _selectedItems = selectedItems;
        });
      }
    }

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
                padding: EdgeInsets.symmetric(
                  horizontal: screenWidth * 0.05, // 5% of screen width
                  vertical: screenHeight * 0.02, // 2% of screen height
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.menu,
                        color: Colors.white,
                        size: screenWidth * 0.08), // 8% of screen width
                    Container(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 33, 37, 243),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.white.withOpacity(0.5),
                            blurRadius: 2,
                          )
                        ],
                      ),
                      child: InkWell(
                        onTap: () {},
                        child: Icon(
                          Icons.notifications,
                          size: screenWidth * 0.08, // 8% of screen width
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.symmetric(
                    horizontal: screenWidth * 0.05), // 5% of screen width
                child: Text(
                  "Welcome To Evently",
                  style: TextStyle(
                    fontSize: screenWidth * 0.07, // 7% of screen width
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: screenWidth * 0.03, // 3% of screen width
                  vertical: screenHeight * 0.01, // 1% of screen height
                ),
                padding: EdgeInsets.symmetric(
                    horizontal: screenWidth * 0.03), // 3% of screen width
                height: screenHeight * 0.06, // 6% of screen height
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.search,
                      size: screenWidth * 0.06, // 6% of screen width
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          left: screenWidth * 0.03), // 3% of screen width
                      width: screenWidth * 0.55, // 55% of screen width
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: "Search",
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    Spacer(),
                    Icon(
                      Icons.send,
                      size: screenWidth * 0.06, // 6% of screen width
                    ),
                    SizedBox(width: screenWidth * 0.02), // 2% of screen width
                    Text("|"),
                    SizedBox(width: screenWidth * 0.02), // 2% of screen width
                    InkWell(
                      onTap: () {
                        _showSelectionDialog();
                      },
                      child: Icon(
                        Icons.filter_list,

                        size: screenWidth * 0.06, // 6% of screen width
                      ),
                    ),
                  ],
                ),
              ),
              MyCart(),
              SizedBox(
                height: screenHeight * 0.02, // 2% of screen height
              ),
              CategorySlide(),
              SizedBox(
                height: screenHeight * 0.02, // 2% of screen height
              ),
              Container(
                padding: EdgeInsets.only(
                    top: screenHeight * 0.02), // 2% of screen height
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(
                        screenWidth * 0.1), // 10% of screen width
                    topRight: Radius.circular(
                        screenWidth * 0.1), // 10% of screen width
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    LatestEventWidget(),
                    SizedBox(
                      height: screenHeight * 0.02, // 2% of screen height
                    ),
                    // Nearbyeventwidget(),
                    // SizedBox(
                    //   height: screenHeight * 0.02, // 2% of screen height
                    // ),
                    UpCommingEventWidgit()
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
