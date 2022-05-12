import 'dart:async';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TimePiker extends StatefulWidget {
  const TimePiker({ Key? key }) : super(key: key);

  @override
  State<TimePiker> createState() => _TimePikerState();
}

class _TimePikerState extends State<TimePiker> {
   late String _timeString;

  get private => null;

  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 1), (Timer t) => _getTime());
  }

  void _getTime() {
    final String formattedDateTime =
        DateFormat('d-MMMM-y\n hh:mm:ss a').format(DateTime.now()).toString();
    setState(() {
      _timeString = formattedDateTime;
      print(_timeString);
    });
  }

  String greeting() {
  var hour = DateTime.now().hour;
  if (hour < 12) {
    return 'Good Morning,';
  }
  if ((hour > 12) && (hour < 16))  {
    return 'Good Afternoon,';
  }
  else if ((hour > 16) && (hour < 20)) {
    return 'Good Evening,';
  }
  return 'Good Night,';
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      // appBar: AppBar(
      //   title: Text('Display Current DateTime - Fluttercorner'),
      // ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          
          Container(
         height: 60,
         width: double.infinity,
         color: Colors.green,
          ),
          Text(greeting().toString(),style: TextStyle(fontSize: 20),) ,
          Text(
             _timeString.toString(),
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
          ),
         

        ],
      ),
    );
  }
}
