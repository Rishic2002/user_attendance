import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'allmethods.dart';

import '../utils/otpdialog.dart';
import '../utils/snackbar.dart';

class PhoneScreen extends StatefulWidget {
  static String routeName = '/phone';
  const PhoneScreen({Key? key}) : super(key: key);

  @override
  State<PhoneScreen> createState() => _PhoneScreenState();
}

class _PhoneScreenState extends State<PhoneScreen> {
  final TextEditingController phoneController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    phoneController.dispose();
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
                    //),Column(

                    const Text(
                      "PHONE LOGIN",
                      style: TextStyle(fontSize: 30),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.08),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      child: TextField(
                        controller: phoneController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15)),
                          fillColor: Colors.white,
                          filled: true,
                          labelText: "PHONE NUMBER",
                          hintText: 'Enter your Phone Number With Country Code',
                          labelStyle: const TextStyle(
                              fontFamily: 'Montserrat', color: Colors.black),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      child: ElevatedButton(
                        onPressed: () => {
                          context
                              .read<FirebaseAuthMethods>()
                              .phoneSignIn(context, phoneController.text)
                        },
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
                  ],
                )))));
  }
}
