
import 'package:eventsphere/Routes/Routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class ProfileEditingPage extends StatefulWidget {
  const ProfileEditingPage({super.key});

  @override
  State<ProfileEditingPage> createState() => _ProfileEditingPageState();
}

class _ProfileEditingPageState extends State<ProfileEditingPage> {
  bool isObscuscurePassword = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 33, 37, 243),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          onPressed: () {
            Get.toNamed(Routes.profilepage);
          },
        ),
        centerTitle: true,
        title: Text(
          "Edit Profile",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 15,
            ),
            Container(
              height: 212,
              width: 400,
              child: Column(
                children: [
                  Center(
                    child: Stack(
                      children: [
                        Container(
                          width: 130,
                          height: 130,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: 4,
                                  color: Theme.of(context)
                                      .scaffoldBackgroundColor),
                              boxShadow: [
                                BoxShadow(
                                    spreadRadius: 2,
                                    blurRadius: 10,
                                    color: Colors.black.withOpacity(0.1),
                                    offset: Offset(0, 10))
                              ],
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage("assets/profile.png"))),
                        ),
                        Positioned(
                            bottom: 0,
                            right: 0,
                            child: Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  width: 4,
                                  color:
                                      Theme.of(context).scaffoldBackgroundColor,
                                ),
                                color: Color.fromARGB(255, 33, 37, 243),
                              ),
                              child: Icon(
                                Icons.edit,
                                color: Colors.white,
                              ),
                            )),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "profile name",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Divider(),
                ],
              ),
            ),
            // Padding(
            //   padding: const EdgeInsets.only(left: 15.0),
            //   child: Container(
            //     width: 400,
            //     height: 50,

            //     // color: Colors.yellow,
            //     child: Row(
            //       children: [],
            //     ),
            //   ),
            // ),

            buildTextField("Full Name", "username", false),
            buildTextField("Email", "user eamil", false),
            buildTextField("Mobile", "Mobile num", false),

            Padding(
              padding: EdgeInsets.only(bottom: 20, left: 20, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "password", // This is your label text
                    style: TextStyle(
                      fontSize: 11,
                      color: Colors.purple[700],
                    ),
                  ),
                  // SizedBox(height: 8), // Space between label and text
                  Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: 8), // Mimic the content padding
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: Colors.grey, // Border color
                          width: 1.0, // Border width
                        ),
                      ),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            "password", // Display the non-editable password text here
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        if (true)
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.visibility_off),
                            color: Colors.grey,
                          ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: OutlinedButton(
                      onPressed: () {},
                      child: Text(
                        "CANCEL",
                        style: TextStyle(
                            fontSize: 15,
                            letterSpacing: 2,
                            color: Colors.black),
                      ),
                      style: OutlinedButton.styleFrom(
                          padding: EdgeInsets.symmetric(horizontal: 50),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)))),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "SAVE",
                      style: TextStyle(
                          fontSize: 15, letterSpacing: 2, color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(
                          255, 33, 37, 243), // Set the button color here
                      padding: EdgeInsets.symmetric(horizontal: 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget buildTextField(
      String lableText, String placeholder, bool ispasswordfield) {
    return Padding(
      padding: EdgeInsets.only(bottom: 30, left: 20, right: 20),
      child: TextField(
        obscureText: ispasswordfield ? isObscuscurePassword : false,
        decoration: InputDecoration(
            suffixIcon: ispasswordfield
                ? IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.remove_red_eye),
                    color: Colors.grey,
                  )
                : null,
            contentPadding: EdgeInsets.only(bottom: 5),
            labelText: lableText,
            floatingLabelBehavior: FloatingLabelBehavior.always,
            hintText: placeholder,
            hintStyle: TextStyle(
                fontSize: 16, fontWeight: FontWeight.bold, color: Colors.grey)),
      ),
    );
  }
}
