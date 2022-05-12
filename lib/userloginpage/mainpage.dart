import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({ Key? key }) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: Container(
             margin: EdgeInsets.only(top: 150),
              height:200,
              width: 200,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/images/payraxpress logo.png'))
              ),
            ),
            
          ),
          SizedBox(height: 20,),
         
              Container(
                width: MediaQuery.of(context).size.width,
                height: 60,
                
                padding: EdgeInsets.only(left: 80,right: 80),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'signin');
                  },
                    style: ElevatedButton.styleFrom(
            primary: Color(0xFF660000),
            padding: EdgeInsets.all(10),
      
            textStyle: TextStyle(
                fontSize: 15,
                
            ),
             shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50), 
          ),
           
          ),
                  child: Text('লগিন করুন'
                
                    )
                  ),
              ),
               SizedBox(height: 30,),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 60,
                
                padding: EdgeInsets.only(left: 80,right: 80),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'signup');
                  },
                    style: ElevatedButton.styleFrom(
            primary: Colors.white,
            padding: EdgeInsets.all(10),
      
            textStyle: TextStyle(
                fontSize: 20,
               
            ),
             shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50), 
          ),
           
          ),
                  child: Text('রেজিষ্ট্রেশন করুন',
                  style:  TextStyle(
                fontSize: 15,
                color: Color(0xFF660000),
            ),
                
                    )
                  ),
              ),
                SizedBox(
                height: 250,
              ),
              Column(
                children: [
                  Text('Powerd By:', style: TextStyle(
                      fontSize: 15,
                      color: Color(0xFF660000),
                      //  fontWeight: FontWeight.bold,
                      ),),
                  Container(
                  width: 150,
                  height: 50,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage('assets/images/payrasoft.png'))
                    ),
      
                  )
                ],
              )
        ],
      ),
    );
  }
}