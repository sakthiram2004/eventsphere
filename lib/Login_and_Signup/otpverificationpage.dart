
import 'package:eventsphere/widgets/my_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';

class OtpverificationPage extends StatefulWidget {
  const OtpverificationPage({super.key});

  @override
  State<OtpverificationPage> createState() => _OtpverificationPageState();
}

class _OtpverificationPageState extends State<OtpverificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Get.back();
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
            size: 25,
          ),
        ),
        title: Text(
          "Verification",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 33, 37, 243),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 33, 37, 243),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 100),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
                child: Column(
                  children: [
                    SizedBox(height: 20),
                    Text(
                      "Enter OTP",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 25.0),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "We send verification code on your registered mobile number !",
                      style: TextStyle(fontSize: 12.0),
                    ),
                    SizedBox(height: 10),
                    OtpTextField(
                      numberOfFields: 6,
                      borderColor: Color.fromARGB(255, 33, 37, 243),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 110.0),
                      child: Row(
                        children: [
                          Text("Re-Send code in :"),
                          Text(
                            "00:30",
                            style: TextStyle(
                                color: Color.fromARGB(255, 33, 37, 243)),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 50),
                    MyButton(
                        text: "Submit",
                        backgroundColor: Color.fromARGB(255, 33, 37, 243),
                        textColor: Colors.white,
                        onPressed: () {}),
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
