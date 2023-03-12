import 'package:app_1/routes/home.dart';
import 'package:app_1/routes/login.dart';
import 'package:app_1/routes/signup.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context) => const Home(),
        '/LoginForm':(context)=>const LoginForm(),
        '/SignUpForm':(context)=>const SignUpForm(),
      },
      initialRoute:  '/' ,
    );
  }
}

