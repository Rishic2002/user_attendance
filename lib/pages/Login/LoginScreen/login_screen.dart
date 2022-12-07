import 'package:attendence_management_system/pages/Login/utils/Register.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../AllLoginMethods/allmethods.dart';
import '../AllLoginMethods/phone_screen.dart';

class LoginScreen extends StatefulWidget {
  static String routeName = '/login';
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void loginUser() {
    context.read<FirebaseAuthMethods>().loginWithEmail(
          email: emailController.text,
          password: passwordController.text,
          context: context,
        );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SafeArea(
                top: true,
                child: SingleChildScrollView(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      // height: 250,
                      // width: 300,
                      child: Image.asset(
                          /*'assets/images/a2e00219-0473-458c-a589-ace1758f609c.png'*/
                          'assets/LogoLoginPage.png'),
                    ),
                    //),
                    //),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      child: TextField(
                        controller: emailController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15)),
                          fillColor: Colors.white,
                          filled: true,
                          labelText: "EMAIL",
                          hintText: 'Enter your Email',
                          labelStyle: const TextStyle(
                              fontFamily: 'Montserrat', color: Colors.black),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      child: TextField(
                        controller: passwordController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15)),
                          fillColor: Colors.white,
                          filled: true,
                          labelText: "PASSWORD",
                          hintText: "ENTER YOUR PASSWORD",
                          labelStyle: const TextStyle(
                              fontFamily: 'Montserrat', color: Colors.black),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      child: ElevatedButton(
                        onPressed: loginUser,
                        style: ButtonStyle(
                          minimumSize: MaterialStateProperty.all(
                            Size(MediaQuery.of(context).size.width / 10, 50),
                          ),
                        ),
                        child: const Text(
                          "Login",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ),
                    ),
                    const Text(
                        "---------------------------------------------------------"),
                    const SizedBox(
                      width: 8,
                    ),
                    Container(
                        child: ElevatedButton(
                      child: const SizedBox(
                          width: 150,
                          height: 30,
                          child: Center(child: Text("PHONE"))),
                      onPressed: () {
                         Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (context) =>
                                      PhoneScreen()));
                      },
                    )),
                    const SizedBox(
                      width: 20,
                      height: 15,
                    ),
                    Container(
                        child: ElevatedButton(
                      child: const SizedBox(
                          width: 150,
                          height: 30,
                          child: Center(child: Text("GOOGLE"))),
                      onPressed: () {
                        //NEED TO ADD GOOGLE SIGN IN ROUTE
                      },
                    )),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "New here?",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14,
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (context) =>
                                      EmailPasswordSignup()));
                          },
                          child: Row(
                            children: const [
                              Text(
                                "Sign Up",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Icon(
                                Icons.arrow_forward,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                )))));
  }
}
