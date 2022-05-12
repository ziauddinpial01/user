import 'package:flutter/material.dart';
import 'package:payraxprass/userloginpage/forgetpass.dart';
import 'package:payraxprass/userloginpage/sign_in.dart';
import 'package:payraxprass/userloginpage/sign_up.dart';
import 'package:payraxprass/userloginpage/splashscreen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
       
        primarySwatch: Colors.blue,
      ),
      home: Splashscreen(),
      routes: {
        'signin':(context) => SignIn(),
        'signup':(context) => SignUp(),
        'pass':(context) => ForgetPass(),
      },
    );
  }
}
