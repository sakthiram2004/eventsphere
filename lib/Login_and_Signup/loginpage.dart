
import 'package:eventsphere/Routes/Routes.dart';
import 'package:eventsphere/controller/logincontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _issecurepassword = true;
  final _loginFormKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final LoginController controller = Get.put(LoginController());
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
          "Login",
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
                      "Don't have an account?",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                    TextButton(
                      onPressed: () {
                        Get.toNamed(Routes.signupscreen);
                      },
                      child: Text(
                        "Create Account",
                        style: TextStyle(color: Colors.amber[700]),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 30),
              Container(
                width: 500,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
                child: Form(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  key: _loginFormKey,
                  child: Column(
                    children: [
                      SizedBox(height: 20),
                      Text(
                        "Sign in!",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 25.0),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Welcome back you've been missed!",
                        style: TextStyle(fontSize: 12.0),
                      ),
                      SizedBox(height: 30),
                      Container(
                        width: 350,
                        height: 90,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            controller: controller.emailController,
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
                      Container(
                        width: 350,
                        height: 90,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            obscureText: _issecurepassword,
                            controller: controller.passwordController,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              labelText: "Password",
                              suffixIcon: togglePassword(),
                              prefixIcon: Icon(Icons.fingerprint),
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
                      Padding(
                        padding: const EdgeInsets.only(left: 35.0),
                        child: Row(
                          children: [
                            Icon(Icons.check_box_outline_blank),
                            SizedBox(width: 10),
                            Text(
                              "Remember me",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(width: 60),
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                "Forgot Password?",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Container(
                        width: 300,
                        height: 45,
                        child: ElevatedButton(
                          onPressed: () {
                            final isValid =
                                _loginFormKey.currentState!.validate();
                            if (isValid) {
                              _loginFormKey.currentState!.save();
                              controller.checkLogin();
                            }
                          },
                          child: Text(
                            "Log in",
                            style: TextStyle(color: Colors.white),
                          ),
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Color.fromARGB(255, 33, 37, 243)),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 250.0),
                    ],
                  ),
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
            _issecurepassword = !_issecurepassword;
          });
        },
        icon: _issecurepassword
            ? Icon(Icons.visibility)
            : Icon(Icons.visibility_off));
  }
  
}
