
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginController extends GetxController {
  // final ApiService apiService = ApiService();
  late TextEditingController emailController, passwordController;
  var email = "";
  var password = "";

  // GlobalKey<FormState> get loginFormKey => _loginFormKey;

  String? validateEmail(String value) {
    if (!GetUtils.isEmail(value)) {
      return "Provide valid email";
    }
    return null;
  }

  String? validatePassword(String value) {
    if (value.isEmpty) {
      return "Enter Password";
    }
    return null;
  }

  void checkLogin() async {
    // final response = await apiService.loginUser(email, password);
    // print(response.statusCode);
    // if (response.statusCode == 200) {
    //   pageRoute(response.body["accessToken"]);
    // } else {
    //   print('Login failed');
    // }
  }

  @override
  void onInit() {
    super.onInit();
    emailController = TextEditingController();
    passwordController = TextEditingController();
  }

  void pageRoute(String token) async {
    // SharedPreferences pref = await SharedPreferences.getInstance();
    // await pref.setString("token", token);
    // final rollResponce = await apiService.getUserroll(token);
    // print(rollResponce.body);
    // if (rollResponce.body["userole"] == "Organizer")
    //   Get.toNamed(Routes.organizerhome);
    // else
    //   Get.offNamed(Routes.homepage);
  }
}
