import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../Routes/Routes.dart';

class SignUpController extends GetxController {
  // final ApiService apiService = ApiService();

  late TextEditingController fullnamecontroller,
      emailcontroller,
      mobilecontroller,
      passwordcontroller,
      ccodecontroller,
      rollcontroller;

  var fullname = "";
  var ccode = "";
  var email = "";
  var mobile = "";
  var password = "";
  var roll = "";

  String? validatefullname(String value) {
    if (value == null || value.isEmpty) {
      return "Enter FullName";
    }
    return null;
  }

  String? validateEmail(String value) {
    if (!GetUtils.isEmail(value)) {
      return "Provide valid email";
    }
    return null;
  }

  String? validatePassword(String value) {
    if (value.isEmpty || value.length < 6) {
      return "Password at least must be 6 characters";
    }
    return null;
  }

  String? validateccode(String value) {
    if (value.isEmpty || value.length == 6) {
      return "College code must be in 4 character";
    }
    return null;
  }

  String? validatemobile(String value) {
    if (value.isEmpty || value.length < 10) {
      return "Enter a valid mobile number";
    }
    return null;
  }

  String? validateroll(String value) {
    if (value == null || value.isEmpty) {
      return 'Please select a roll';
    }
    return null;
  }

  void checkSignUp() async {
    // final response = await apiService.signupUser(
    //     fullname, email, password, ccode, mobile, roll);
    // print(response.statusCode);
    // if (response.statusCode == 201) {
    //   pageRoute(response.body["accessToken"], roll);
    // } else {
    //   print('signup failed');
    //   print(response.statusCode);
    // }
  }

  @override
  void onInit() {
    super.onInit();
    emailcontroller = TextEditingController();
    passwordcontroller = TextEditingController();
    mobilecontroller = TextEditingController();
    fullnamecontroller = TextEditingController();
    rollcontroller = TextEditingController();
    ccodecontroller = TextEditingController();
  }

  void pageRoute(String token, String roll) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    await pref.setString("token", token);
    if (roll == "Student")
      Get.toNamed(Routes.homepage);
    else
      Get.toNamed(Routes.organizerhome);
  }
}
