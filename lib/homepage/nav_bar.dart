import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:payraxprass/homepage/homepage.dart';
import 'package:payraxprass/homepage/others.dart';
import 'package:payraxprass/homepage/search_page.dart';

class NabBar extends StatefulWidget {
  const NabBar({ Key? key }) : super(key: key);

  @override
  State<NabBar> createState() => _NabBarState();
}

class _NabBarState extends State<NabBar> {
  
  final List<Widget> body =[
     HomePage(),
    SearchPage(),
    OthersPage()
  ];
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: body[_currentIndex],
      bottomNavigationBar: CurvedNavigationBar(       
        backgroundColor: Color(0xFF660000),
        buttonBackgroundColor: Colors.white,
        height: 60,
        color: Colors.white,
        
        onTap: onTab,
        
        items: [
          Icon(Icons.home,size: 30,),
          Icon(Icons.favorite,size: 30),
          Icon(Icons.settings,size: 30),

        ]
        )

    );
  }
  void onTab (int index){
 setState(() {
   _currentIndex =index;
 }); 
}
}
