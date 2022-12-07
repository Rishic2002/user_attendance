import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../AllLoginMethods/allmethods.dart';

class EmailPasswordSignup extends StatefulWidget {
  static String routeName = '/signup-email-password';
  const EmailPasswordSignup({Key? key}) : super(key: key);

  @override
  _EmailPasswordSignupState createState() => _EmailPasswordSignupState();
}

class _EmailPasswordSignupState extends State<EmailPasswordSignup> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void signUpUser() async {
    context.read<FirebaseAuthMethods>().signUpWithEmail(
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
                      const Text(
                        "SIGN UP",
                        style: TextStyle(fontSize: 30),
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.08),
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
                      GestureDetector(
                        onTap: () {
                          onPressed:
                          signUpUser;
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
                ))));
  }
}
