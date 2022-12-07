// ignore_for_file: camel_case_types

import 'package:attendence_management_system/firebase_options.dart';
import 'package:attendence_management_system/pages/Login/LoginScreen/login_screen.dart';
import 'package:attendence_management_system/pages/loginpages/loginPage.txt';
import 'package:attendence_management_system/theme/colors.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:provider/provider.dart';

import 'pages/Login/AllLoginMethods/allmethods.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<FirebaseAuthMethods>(
          create: (_) => FirebaseAuthMethods(FirebaseAuth.instance),
        ),
        StreamProvider(
          create: (context) => context.read<FirebaseAuthMethods>().authState,
          initialData: null,
        ),
      ],
      child: MaterialApp(
          title: 'WELCOME',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: const LoginScreen(),


    ));
  }
}
