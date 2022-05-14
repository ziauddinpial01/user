import 'dart:async';
import 'package:flutter/material.dart';
import 'package:payraxprass/homepage/nav_bar.dart';
import 'package:payraxprass/homepage/test.dart';
import 'package:payraxprass/homepage/timepiker.dart';
import 'package:payraxprass/userloginpage/extra1.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({ Key? key }) : super(key: key);

  @override
  _SplashscreenState createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
_SplashscreenState(){
  new Timer(
    Duration(seconds: 3), () {
      setState(() {
        Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context)=>NabBar()), (route) => false
          );
      });
    },
    );
}

 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          
          Center(
            child: Container(alignment: Alignment.center,
            padding: EdgeInsets.only(left: 140),
              height:250,
              width: 250,
             decoration: BoxDecoration(
               image: DecorationImage(image: AssetImage('assets/images/payraxpress logo.png'))
             ),
                
            ),
          ),
        ],
      )
     
    );
  }
}