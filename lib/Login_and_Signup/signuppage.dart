
import 'package:eventsphere/Routes/Routes.dart';
import 'package:eventsphere/controller/signupcontroller.dart';
import 'package:eventsphere/widgets/my_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  bool _isSecurePassword = true;
  final SignUpController controller = Get.put(SignUpController());
  String valueChoose = "Student";
  final rollItems = ["Student", "Organizer"];
  final GlobalKey<FormState> _signupFormKey = GlobalKey<FormState>();

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
          "Signup",
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
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 60.0),
                child: Row(
                  children: [
                    Text(
                      "Already have an account?",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                    TextButton(
                      onPressed: () {
                        Get.toNamed(Routes.loginscreen);
                      },
                      child: Text(
                        "Login Now",
                        style: TextStyle(color: Colors.amber[700]),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 30),
              Container(
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
                      "Get Started.",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 25.0),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Create your free account in seconds",
                      style: TextStyle(fontSize: 12.0),
                    ),
                    SizedBox(height: 9),
                    Form(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      key: _signupFormKey,
                      child: Column(
                        children: [
                          Container(
                            width: 330,
                            height: 80,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextFormField(
                                controller: controller.fullnamecontroller,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  labelText: "Full Name",
                                  prefixIcon: Icon(Icons.person_2_outlined),
                                ),
                                onSaved: (value) {
                                  controller.fullname = value!;
                                },
                                validator: (value) {
                                  return controller.validatefullname(value!);
                                },
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 9.0,
                          ),
                          Container(
                            width: 330,
                            height: 80,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextFormField(
                                controller: controller.emailcontroller,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  labelText: "Email",
                                  prefixIcon: Icon(Icons.email),
                                ),
                                onSaved: (value) {
                                  controller.email = value!;
                                },
                                validator: (value) {
                                  return controller.validateEmail(value!);
                                },
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(40, 13, 35, 0),
                            child: Container(
                              height: 60,
                              child: IntlPhoneField(
                                controller: controller.mobilecontroller,
                                onSaved: (value) {
                                  controller.mobile = value!.completeNumber;
                                  controller.ccode = value.countryCode;
                                },
                                validator: (value) {
                                  return controller
                                      .validatemobile(value!.completeNumber);
                                },
                                decoration: InputDecoration(
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15),
                                    borderSide: BorderSide(
                                      color: Colors.grey.shade300,
                                    ),
                                  ),
                                  labelText: 'Mobile Number',
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    borderSide: BorderSide(
                                      color: Color.fromARGB(255, 33, 37, 243),
                                      width: 2.0,
                                    ),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    borderSide: BorderSide(
                                      color: Color.fromARGB(255, 33, 37, 243),
                                      width: 2.0,
                                    ),
                                  ),
                                  counterText: '',
                                ),
                                initialCountryCode: 'US',
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 9.0,
                          ),
                          Container(
                            width: 330,
                            height: 80,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextFormField(
                                obscureText: _isSecurePassword,
                                controller: controller.passwordcontroller,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  labelText: "Password",
                                  prefixIcon: Icon(Icons.fingerprint),
                                  suffixIcon: togglePassword(),
                                ),
                                onSaved: (value) {
                                  controller.password = value!;
                                },
                                validator: (value) {
                                  return controller.validatePassword(value!);
                                },
                              ),
                            ),
                          ),
                          Container(
                            width: 330,
                            height: 70,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: DropdownButtonFormField<String>(
                                value:
                                    valueChoose.isNotEmpty ? valueChoose : null,
                                onChanged: (value) {
                                  setState(() {
                                    valueChoose = value!;
                                  });
                                },
                                items: rollItems.map((String rollItem) {
                                  return DropdownMenuItem(
                                    value: rollItem,
                                    child: Text(rollItem),
                                  );
                                }).toList(),
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  labelText: 'Roll',
                                ),
                                validator: (value) {
                                  return controller.validateroll(value!);
                                },
                                onSaved: (value) {
                                  controller.roll = value!;
                                },
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          Padding(
                            padding: const EdgeInsets.only(left: 37.0),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.check_box),
                                    SizedBox(width: 10),
                                    Text(
                                        "By creating an account, you agree to our"),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          TextButton(
                              onPressed: () {},
                              child: Text("Terms and Condition")),
                          MyButton(
                              text: "Continue",
                              backgroundColor: Color.fromARGB(255, 33, 37, 243),
                              textColor: Colors.white,
                              onPressed: () {
                                if (_signupFormKey.currentState!.validate()) {
                                  _signupFormKey.currentState!.save();
                                  controller.checkSignUp();
                                }
                              }),
                          SizedBox(height: 90.0),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget togglePassword() {
    return IconButton(
        onPressed: () {
          setState(() {
            _isSecurePassword = !_isSecurePassword;
          });
        },
        icon: _isSecurePassword
            ? Icon(Icons.visibility)
            : Icon(Icons.visibility_off));
  }
}
